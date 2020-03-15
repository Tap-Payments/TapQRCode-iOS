//
//  TapQRCodeGenerator.swift
//  TapQRCode-iOS
//
//  Created by Osama Rabie on 15/03/2020.
//  Copyright © 2020 Tap Payments. All rights reserved.
//

import Foundation
import MPQRCoreSDK
import EFQRCode

/// This provides the public interface for the caller to create QRCode images
public class TapQRCodeGenerator:NSObject
{
    @objc public static func generateQrCode(with QRCodetype:TapQrCodeType,content:String)->UIImage?
    {
        switch QRCodetype
        {
        case .UrlCode:
            break
        case .TextCode:
            break
        case .EmvCode:
            break
        }
        return nil
    }
}
