//
//  TapQrCodeContent.swift
//  TapQRCode-iOS
//
//  Created by Osama Rabie on 15/03/2020.
//  Copyright © 2020 Tap Payments. All rights reserved.
//

import Foundation

/// Provides a unified way to provide different content for different qr code types
public class TapQrCodeContent:NSObject
{
    /// The type of the qr code, calculated based on the given content
    internal var qrCodeType:TapQrCodeType = .TextCode
    /// Holds privately what content had been passed to create the QRcodeContent
    internal var content:[String:Any] = [:]
    
    /**
        Creates a  text based TapQRCodeContent object
     - Parameter withText: The textual value of the code content
     */
    @objc public init(withText:String)
    {
        super.init()
        qrCodeType = .TextCode
        content["content"] = withText
    }
    
    /**
       Creates a  URL based TapQRCodeContent object
    - Parameter withUrl: The url value of the code content
    */
    @objc public init(withUrl:URL)
    {
        super.init()
        qrCodeType = .UrlCode
        content["content"] = withUrl.absoluteString
    }
    
    /**
       Creates an  EMVCO based TapQRCodeContent object
    - Parameter withUrl: The url value of the code content
    */
    @objc public init(withEmv:TapEmvcoPushData)
    {
        super.init()
        qrCodeType = .EmvCode
        content["content"] = withEmv
    }
    
    /**
     Gets the real value of  the encabsulated qr code content
     - Returns: The value based on the qr code type, String, URL or PushPaymentData
     */
    internal func value() -> QrCodeValue
    {
        switch qrCodeType {
        case .TextCode:
            return QrCodeValue.textCode(content["content"] as? String ?? "")
        case .UrlCode:
            return QrCodeValue.urlCode(URL(string: content["content"] as? String ?? "")!)
        case .EmvCode:
            return QrCodeValue.pushData(content["content"] as! TapEmvcoPushData)
        }
    }
}
