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
    @objc public static func generateQrCode(with qrCodeContent:TapQrCodeContent)->UIImage?
    {
        
        var qrString:String = ""
        
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
    
    
    
    
    internal static func generateQRCode(from string: String) -> UIImage? {
        
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
