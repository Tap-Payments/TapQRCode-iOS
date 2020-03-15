//
//  QrCodeValue.swift
//  TapQRCode-iOS
//
//  Created by Osama Rabie on 15/03/2020.
//  Copyright © 2020 Tap Payments. All rights reserved.
//

/// Represents the value of qr generator which can be an actual String, URL or PushPaymentData
public enum QrCodeValue {
    /// Holds the text content of a qr code we need to generate
    case textCode(String)
    /// Holds the url content of a qr code we need to generate
    case urlCode(URL)
    /// Holds the PushPaymentData we need to generate
    case pushData(TapEmvcoPushData)
}
