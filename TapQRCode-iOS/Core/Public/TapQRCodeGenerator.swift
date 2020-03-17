//
//  TapQRCodeGenerator.swift
//  TapQRCode-iOS
//
//  Created by Osama Rabie on 15/03/2020.
//  Copyright © 2020 Tap Payments. All rights reserved.
//

import Foundation
import MPQRCoreSDK.PushPaymentData
import EFQRCode

/// This provides the public interface for the caller to create QRCode images
public class TapQRCodeGenerator:NSObject
{
    /**
     The public and only inerface for generting a QR code image
     - Parameter qrCodeContent: The TapQrCodeContent which hilds the type and content of the required qr code
     - Returns: UIImage of the qr code if valid or nil otherwise
     */
    @objc public static func generateQrCode(with qrCodeContent:TapQrCodeContent)->UIImage?
    {
        
        var qrString:String = ""
        // Get the qr string based on the passed TapQr type
        switch qrCodeContent.value() {
            case .textCode(let stringData):
                qrString = stringData
            case .urlCode(let urlData):
                qrString = urlData.absoluteString
            case .pushData(let pushData):
                do {
                    // Validate generated data
                    qrString = try pushData.pushPaymentData.generatePushPaymentString()
                } catch {
                    print("Error occurred during validation \(error)")
                }
        }
        
        
        return generateQRCode(from: qrString)
    }
    
    
    
    /**
    The helper method that actually parses a STRING into a QRCode image
    - Parameter string: The string which holds the content of the qr code
    - Returns: UIImage of the qr code if valid or nil otherwise
    */
    internal static func generateQRCode(from string: String) -> UIImage? {
        if string == "" {
            return nil
        }
            
        if let tryImage = EFQRCode.generate(
            content: string
            //foregroundColor: UIColor.init(red: 1, green: 0, blue: 0, alpha: 0.73).cgColor,
            //icon:UIImage(named: "tap")?.cgImage
        ) {
            print("Create QRCode image success: \(tryImage)")
            return UIImage(cgImage: tryImage)
        } else {
            print("Create QRCode image failed!")
        }
        return nil
    }
}
