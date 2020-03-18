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

/// This provides the public interface for the caller to the Tap QR code Scanner
@objc public class TapQRCodeScanner:NSObject {
    
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
    
}
