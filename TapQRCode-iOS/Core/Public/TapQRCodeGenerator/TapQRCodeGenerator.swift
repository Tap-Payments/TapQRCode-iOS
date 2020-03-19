//
//  TapQRCodeGenerator.swift
//  TapQRCode-iOS
//
//  Created by Osama Rabie on 15/03/2020.
//  Copyright © 2020 Tap Payments. All rights reserved.
//

import Foundation
import class UIKit.UIImage
import class UIKit.UIColor
import class MasterpassQRCoreSDK.PushPaymentData

/// This provides the public interface for the caller to create QRCode images
@objc public class TapQRCodeGenerator:NSObject
{
    /**
     The public and only inerface for generting a QR code image
     - Parameter qrCodeContent: The TapQrCodeContent which hilds the type and content of the required qr code
     - Parameter foreGroundColor: The colour of the qr code dots and blocks. Default is black
     - Parameter backgroundColor: The colour of the qr code background. Default is none
     - Parameter waterMark: Watermark image appears in the center of the qr code. Default is none
     - Returns: UIImage of the qr code if valid or nil otherwise
     */
    @objc public static func generateQrCode(with qrCodeContent:TapQrCodeContent,foreGroundColor:UIColor = .black,backgroundColor:UIColor = .clear,waterMark:UIImage = UIImage())->UIImage?
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
        
        
        return generateQRCode(from: qrString,foreGroundColor: foreGroundColor,backgroundColor: backgroundColor,waterMark: waterMark)
    }
    
    
    
    /**
    The helper method that actually parses a STRING into a QRCode image
     - Parameter string: The string which holds the content of the qr code
     - Parameter foreGroundColor: The colour of the qr code dots and blocks. Default is black
     - Parameter backgroundColor: The colour of the qr code background. Default is none
     - Parameter waterMark: Watermark image appears in the center of the qr code. Default is none
    - Returns: UIImage of the qr code if valid or nil otherwise
    */
    internal static func generateQRCode(from string: String,foreGroundColor:UIColor = .black,backgroundColor:UIColor = .clear,waterMark:UIImage = UIImage()) -> UIImage? {
        if string == "" {
            return nil
        }
            
        if let tryImage = EFQRCode.generate(
            content: string,
            backgroundColor: backgroundColor.cgColor,
            foregroundColor: foreGroundColor.cgColor,
            icon: waterMark.cgImage
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
