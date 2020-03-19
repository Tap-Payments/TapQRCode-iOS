//
//  TapQRCodeScanner.swift
//  TapQRCode-iOS
//
//  Created by Osama Rabie on 18/03/2020.
//  Copyright © 2020 Tap Payments. All rights reserved.
//

import Foundation
import class AVFoundation.AVCaptureDevice
import class UIKit.UIImagePickerController
import struct UIKit.CGFloat
import class UIKit.UIView
import class UIKit.UIImage
import struct UIKit.CGRect
import class UIKit.CIDetector
import var UIKit.CIDetectorTypeQRCode
import class UIKit.CIImage
import var UIKit.CIDetectorAccuracy
import var UIKit.CIDetectorAccuracyHigh
import class UIKit.CIQRCodeFeature
import class UIKit.UIViewController
import class UIKit.UIButton
import enum UIKit.UIStatusBarStyle

/// This provides the public interface for the caller to the Tap QR code Scanner
@objc public class TapQRCodeScanner:NSObject {
    
    
    
    private  var  observer: NSKeyValueObservation?

    internal  var previewView: QRCodeReaderView?
      
    internal  var reader: QRCodeReader = QRCodeReader()
    
    internal var holdingView:UIView?
    internal var shouldHideUponScanning:Bool = true
    internal var erroCallBack:((String) -> ())? = nil
    internal var scannedCodeCallBack:((TapQRCodeScannerResult) -> ())? = nil
    internal var scannerRemovedCallBack:(() -> ())? = nil
    internal var introFadeIn:Bool = false
    internal var outroFadeOut:Bool = false
    internal var top:CGFloat = 0
    internal var bottom:CGFloat = 0
    internal var right:CGFloat = 0
    internal var left:CGFloat = 0
    
    @objc public var isScanning:Bool  {
        get {
            return reader.isRunning
        }
    }
    /**
     The method checks for camera existance and permissions.
     - Returns: True if the camera exists in the device and the user granted the camera usage permission for the app. False othweise
     **/
    @objc public class func canStartScanner()->Bool {
        return checkCameraExists() && checkCameraPermission()
    }
    
    /**
    The method checks for camera permission.
    - Returns: True if the user granted the camera usage permission for the app. False othweise
    **/
    private class func checkCameraPermission()->Bool {
        return AVCaptureDevice.authorizationStatus(for: .video) ==  .authorized
    }
    
    /**The method checks for camera permission.
     - Returns: True if the camera exists in the device. False othweise
     **/
    private class func checkCameraExists()->Bool {
        return UIImagePickerController.isSourceTypeAvailable(.camera)
    }
    
    /**
        Interface to start the scanner if all requirments are met, inside a bounvded uiview
     - Parameter holdingView: The subview the caller wants to show  the scanner in
     - Parameter shouldHideUponScanning: if true, then the scanner will dismiss itself after reading a code. Default True
     - Parameter erroCallBack: Closure used to send a string description of any error prevented the scannr to start
     - Parameter scannedCodeCallBack: Closure used to send a string description of the scanned code
     - Parameter scannerRemovedCallBack: Closure used to inform when the scanner is removed
     - Parameter introFadeIn: When set tthe scanner will fade in when ready
     - Parameter outroFadeOut: When set the scanner will fde out upon completion
     - Parameter top: Top margin from the holder uiview. Default is 0
     - Parameter bottom: Bottom margin from the holder uiview. Default is 0
     - Parameter left: Left margin from the holder uiview. Default is 0
     - Parameter right: Right margin from the holder uiview. Default is 0
     */
    @objc public func scan(inside holdingView:UIView, shouldHideUponScanning:Bool = true, erroCallBack:((String) -> ())? = nil, scannedCodeCallBack:((TapQRCodeScannerResult) -> ())? = nil,scannerRemovedCallBack:(() -> ())? = nil, introFadeIn:Bool = false, outroFadeOut:Bool = false,top:CGFloat = 0,bottom:CGFloat = 0,right:CGFloat = 0, left:CGFloat = 0) {
        
        self.holdingView = holdingView
        self.shouldHideUponScanning = shouldHideUponScanning
        self.erroCallBack = erroCallBack
        self.scannedCodeCallBack = scannedCodeCallBack
        self.scannerRemovedCallBack = scannerRemovedCallBack
        self.introFadeIn = introFadeIn
        self.outroFadeOut = outroFadeOut
        self.top = top
        self.bottom = bottom
        self.right = right
        self.left = left
        
        // First of all we need to check we can start the scanner
        guard TapQRCodeScanner.canStartScanner(), !reader.isRunning else {
            print("Camera permission is required")
            if let erroCallBackBlock = erroCallBack {
                erroCallBackBlock("Camera permission is required")
            }
            return
        }
        
        if let _ = previewView{
            // Defensive code to remove any preview view before to make sure memory is always clean
            DispatchQueue.main.async { [weak self] in
                self?.previewView?.removeFromSuperview()
            }
        }
        
        // Assing the new frame given to the preview scanner
        previewView = QRCodeReaderView(frame: CGRect(x: 0+left, y: 0+top, width: holdingView.frame.width-(right+left), height: holdingView.frame.height-(bottom+top)))
        
        // This will setup the inline scanner with the default attribtes and assigns the camera reader to the preview frame
        setupInlineQRScanner()
        
        DispatchQueue.main.async { [weak self] in
            // Add the preview frame to the passed subview
            self?.previewView?.alpha = introFadeIn ? 0 : 1
            holdingView.addSubview((self?.previewView!)!)
            
            if introFadeIn {
                UIView.animate(withDuration: 0.3) {
                  self?.previewView?.alpha = 1
                }
            }
        }
        
        reader.didFindCode = { [weak self] result in
          print("Completion with result: \(result.value) of type \(result.metadataType)")
            if shouldHideUponScanning {
                self?.stopInlineScanning()
            }
            
            if let scannedBlock = scannedCodeCallBack {
                scannedBlock(.init(scannedText:result.value))
            }
        }
        
        
        //self.addObserver(holdingView, forKeyPath: "center", options: NSKeyValueObservingOptions.new, context: nil)
        observer = holdingView.observe(\.bounds) { [weak self] newFrame, _ in
            
            self?.updateInlineScannerFrame(with:CGRect(x: 0+left, y: 0+top, width: newFrame.frame.width-(right+left), height: newFrame.frame.height-(bottom+top)))
            
        }
        
        // All good!
        reader.stopScanningWhenCodeIsFound = shouldHideUponScanning
        reader.startScanning()
    }
    
    
    
    private func updateInlineScannerFrame(with frame:CGRect) {
        
        DispatchQueue.main.async { [weak self] in
            self?.previewView?.frame = frame
            self?.previewView?.setNeedsLayout()
            self?.previewView?.setNeedsDisplay()
            self?.previewView?.overlayView?.setNeedsDisplay()
            self?.previewView?.overlayView?.setNeedsDisplay()
        }
        
    }
    
    /**
     This interface will return back the qr code if found from a given static image
     - Parameter image : The image you want to see if it contains a qr code
     - Returns:TapQRCodeScannerResult with text filled with scanned qr code (empty if not found) and emvco data if the parsed string is a valid emvco data
     */
    @objc public func scan(from image:UIImage)->TapQRCodeScannerResult {
        
        var qrCodeLink:String = ""
        // define the detector to get qr codes from the image
        let detector:CIDetector=CIDetector(ofType: CIDetectorTypeQRCode, context: nil, options: [CIDetectorAccuracy:CIDetectorAccuracyHigh])!
        let ciImage:CIImage=CIImage(image:image)!
        let features=detector.features(in: ciImage)
        
        // Parse each feature to get the result back as a full
        for feature in features as! [CIQRCodeFeature] {
          qrCodeLink += feature.messageString!
        }
        
        return .init(scannedText:qrCodeLink)
    }
    
    
    /**
     Interface to show the scanner in a full screen as a modal controller
     - Parameter fromController : The view controller the scanner will be presented from
     - Parameter showTorchButton : Determine if the torch button will be visible on the scanner. Default true
     - Parameter showOverlay : Determine if the overlay will be visible on the scanner. Default true
     - Parameter showSwitchCameraButton : Determine if the switch button will be visible on the scanner. Default false
     - Parameter statusBar : Determine what UIStatusbar stule you want. Default .default
     - Parameter cancelButtonTitle : Determine the title of the cancel button. Default Cancel
     - Parameter torchButtonIcon : If you want to set a specific icon for the torch button
     - Parameter erroCallBack: Closure used to send a string description of any error prevented the scannr to start
     - Parameter scannedCodeCallBack: Closure used to send a string description of the scanned code
     - Parameter scannerCanceledCallBack: Closure used to inform when the scanner is cancelled
     */
    @objc public func scan(fullScreen fromController:UIViewController?,showTorchButton:Bool = false, showOverlay:Bool = true, showSwitchCameraButton:Bool = false, statusBar:UIStatusBarStyle = .default,cancelButtonTitle:String = "Cancel",torchButtonIcon:UIImage? = nil, erroCallBack:((String) -> ())? = nil, scannedCodeCallBack:((TapQRCodeScannerResult) -> ())? = nil,scannerCanceledCallBack:(() -> ())? = nil) {
        
        guard TapQRCodeScanner.canStartScanner(), let _ = fromController else {
            print("Camera permission is required")
            if let erroCallBackBlock = erroCallBack {
                erroCallBackBlock("Camera permission is required")
            }
            return
        }

        let readerVC: QRCodeReaderViewController = {
          let builder = QRCodeReaderViewControllerBuilder {
            $0.reader                  = QRCodeReader(metadataObjectTypes: [.qr], captureDevicePosition: .back)
            $0.showTorchButton         = showTorchButton
            $0.preferredStatusBarStyle = statusBar
            $0.showOverlayView         = showOverlay
            $0.rectOfInterest          = CGRect(x: 0.1, y: 0.1, width: 0.8, height: 0.8)
            $0.reader.stopScanningWhenCodeIsFound = false
            $0.cancelButtonTitle       = cancelButtonTitle
            $0.showSwitchCameraButton  = showSwitchCameraButton
            $0.torchButtonIcon         = torchButtonIcon
          }
          
          return QRCodeReaderViewController(builder: builder)
        }()
        
        readerVC.modalPresentationStyle = .formSheet
        //readerVC.delegate               = self

        readerVC.completionBlock = { (result: QRCodeReaderResult?) in
          if let result = result {
            print("Completion with result: \(result.value) of type \(result.metadataType)")
            readerVC.cancelBlock = nil
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) { [unowned readerVC] in
                readerVC.codeReader.stopScanning()
                readerVC.dismiss(animated: true) {
                    if let scannedBlock = scannedCodeCallBack {
                        scannedBlock(.init(scannedText:result.value))
                    }
                }
            }
          }
        }
        
        
        readerVC.cancelBlock = {
            if let scannerCanceledCallBlock = scannerCanceledCallBack {
                scannerCanceledCallBlock()
            }
        }

        fromController!.present(readerVC, animated: true, completion: nil)
    }
    
    /**
     Interface to remove and stop the inline scanner. Can be used only if the caller needs tto handle himself dismissing the inline scanner
     */
    @objc public func stopInlineScanning() {
        if outroFadeOut {
            DispatchQueue.main.async {[weak self] in
                UIView.animate(withDuration: 0.3, animations: {
                    self?.previewView?.alpha = 0
                }) { (_) in
                    self?.previewView?.removeFromSuperview()
                    self?.reader.stopScanning()
                }
            }
        }else {
            previewView?.removeFromSuperview()
            reader.stopScanning()
        }
        
        if let scannerRemovedBlock = scannerRemovedCallBack {
            scannerRemovedBlock()
        }
        
        observer?.invalidate()
    }
    
    /**
     This is a private helper method that will configure the qr code scanner view, it will dismiss all the buttons like flip camera or torch as in inline. Also defines the default area of interest
     */
    private func setupInlineQRScanner() {
        previewView?.setupComponents(with: QRCodeReaderViewControllerBuilder {
          $0.reader                 = reader
          $0.showTorchButton        = false
          $0.showSwitchCameraButton = false
          $0.showCancelButton       = false
          $0.showOverlayView        = true
          $0.rectOfInterest         = CGRect(x: 0.1, y: 0.1, width: 0.8, height: 0.8)
            })
    }
}
