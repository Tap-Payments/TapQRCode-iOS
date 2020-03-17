//
//  TapEmvcoOfInitiation.swift
//  TapQRCode-iOS
//
//  Created by Osama Rabie on 16/03/2020.
//  Copyright © 2020 Tap Payments. All rights reserved.
//

///If present, the Point of Initiation Method shall contain a value of "11" or "12". All other values are RFU. The value of "11" should be used when the same QR Code is shown for more than one transaction and the value of “12” should be used when a new QR Code is shown for each transaction.

@objc public enum TapEmvcoOfInitiation: Int, RawRepresentable,CaseIterable {
    /// Represents the qr code is a static code and payable more than once, this translates to the EMVCO code of Point of Initiation Method "11"
    case Static
    /// Represents the qr code is a dynamic code and payable once, this translates to the EMVCO code of Point of Initiation Method "12"
    case Dynamic

    public typealias RawValue = String

    public var rawValue: RawValue {
        switch self {
            case .Static:
                return "11"
            case .Dynamic:
                return "12"
        }
    }
    
    public init?(rawValue: RawValue) {
        switch rawValue.lowercased() {
            case "11":
                self = .Static
            case "12":
                self = .Dynamic
            default:
                return nil
        }
    }
}
