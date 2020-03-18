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
import QRCodeReader

/// This provides the public interface for the caller to the Tap QR code Scanner
@objc public class TapQRCodeScanner:NSObject {
    
    
    
    
    internal static var previewView: QRCodeReaderView?
      
    internal static var reader: QRCodeReader = QRCodeReader()
    
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
     */
    @objc public class func scanInline(inside holdingView:UIView, shouldHideUponScanning:Bool = true, erroCallBack:((String) -> ())? = nil, scannedCodeCallBack:((TapQRCodeScannerResult) -> ())? = nil,scannerRemovedCallBack:(() -> ())? = nil, introFadeIn:Bool = false, outroFadeOut:Bool = false) {
        
        // First of all we need to check we can start the scanner
        guard canStartScanner(), !reader.isRunning else {
            print("Camera permission is required")
            if let erroCallBackBlock = erroCallBack {
                erroCallBackBlock("Camera permission is required")
            }
            return
        }
        
        if let _ = previewView{
            // Defensive code to remove any preview view before to make sure memory is always clean
            DispatchQueue.main.async {
                previewView?.removeFromSuperview()
            }
        }
        
        // Assing the new frame given to the preview scanner
        previewView = QRCodeReaderView(frame: CGRect(x: 0, y: 0, width: holdingView.frame.width, height: holdingView.frame.height))
        
        // This will setup the inline scanner with the default attribtes and assigns the camera reader to the preview frame
        setupInlineQRScanner()
        
        DispatchQueue.main.async {
            // Add the preview frame to the passed subview
            previewView?.alpha = introFadeIn ? 0 : 1
            holdingView.addSubview(previewView!)
            
            if introFadeIn {
                UIView.animate(withDuration: 0.3) {
                  previewView?.alpha = 1
                }
            }
        }
        
        reader.didFindCode = { result in
          print("Completion with result: \(result.value) of type \(result.metadataType)")
            if shouldHideUponScanning {
                stopInlineScanning(scannerRemovedCallBack: scannerRemovedCallBack,shouldFadeOut:outroFadeOut)
            }
            
            if let scannedBlock = scannedCodeCallBack {
                scannedBlock(.init(scannedText:result.value))
            }
        }
        
        // All good!
        reader.stopScanningWhenCodeIsFound = shouldHideUponScanning
        reader.startScanning()
    }
    
    
    @objc public class func updateInlineScannerFrame(with frame:CGRect) {
        
        DispatchQueue.main.async {
            previewView?.frame = frame
            previewView?.setNeedsLayout()
            previewView?.setNeedsDisplay()
        }
        
    }
    
    /**
     Interface to remove and stop the inline scanner. Can be used only if the caller needs tto handle himself dismissing the inline scanner
     - Parameter scannerRemovedCallBack: Closure used to inform when the scanner is removed
     - Parameter shouldFadeOut: When set the scanner will fde out upon completion
     */
    @objc public class func stopInlineScanning(scannerRemovedCallBack:(() -> ())? = nil,shouldFadeOut:Bool = false) {
        if shouldFadeOut {
            DispatchQueue.main.async {
                UIView.animate(withDuration: 0.3, animations: {
                    previewView?.alpha = 0
                }) { (_) in
                    previewView?.removeFromSuperview()
                    reader.stopScanning()
                }
            }
        }else {
            previewView?.removeFromSuperview()
            reader.stopScanning()
        }
        
        if let scannerRemovedBlock = scannerRemovedCallBack {
            scannerRemovedBlock()
        }
    }
    
    /**
     This is a private helper method that will configure the qr code scanner view, it will dismiss all the buttons like flip camera or torch as in inline. Also defines the default area of interest
     */
    private class func setupInlineQRScanner() {
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
