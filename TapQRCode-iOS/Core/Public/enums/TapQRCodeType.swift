//
//  TapQRCodeType.swift
//  TapQRCode-iOS
//
//  Created by Osama Rabie on 15/03/2020.
//  Copyright © 2020 Tap Payments. All rights reserved.
//


/// Enum to define  the supported types of qr codes
@objc public enum TapQrCodeType: Int {
    /// Url qr code that encapsulates a url inside it
    case UrlCode
    /// Textual qr code that encapsulates a url inside it
    case TextCode
    /// EMV code for push payment details inside the qr code
    case EmvCode
}
