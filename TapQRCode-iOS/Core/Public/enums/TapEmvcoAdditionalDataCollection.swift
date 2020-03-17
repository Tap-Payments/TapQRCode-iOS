//
//  TapEmvcoAdditionalDataCollection.swift
//  TapQRCode-iOS
//
//  Created by Osama Rabie on 16/03/2020.
//  Copyright © 2020 Tap Payments. All rights reserved.
//

import Foundation
//If present, the Additional Consumer Data Request (ID "09"). Where it asks the mobile application to provide the required data whether Email, Phone, Address or any coombination of them.

@objc public enum TapEmvcoAdditionalDataCollection: Int, RawRepresentable,CaseIterable {
    /// Represents the additional data of email "E"
    case Email
    /// Represents the additional data of phone "M"
    case Phone
    /// Represents the additional data of Address "A"
    case Address
    /// Represents the additional data of phone and email "ME"
    case phoneEmail
    /// Represents the additional data of phone and email and address "MEA"
    case phoneEmailAddress
    /// Represents the additional data of address and email "AE"
    case addressEmail
    /// Represents the additional data of phone and address "MA"
    case addressPhone
    /// Used as a default value to import to Objective c
    case None
    
    public typealias RawValue = String

    public var rawValue: RawValue {
        switch self {
            case .Email:
                return "E"
            case .Phone:
                return "M"
            case .Address:
                return "A"
            case .phoneEmail:
                return "ME"
            case .phoneEmailAddress:
                return "MEA"
            case .addressEmail:
                return "AE"
            case .addressPhone:
                return "AM"
            case .None:
            return ""
        }
    }
    
    public init?(rawValue: RawValue) {
        switch rawValue.uppercased() {
            case "E":
                self = .Email
            case "M":
                self = .Phone
            case "A":
                self = .Address
            case "ME":
                self = .phoneEmail
            case "MEA":
                self = .phoneEmailAddress
            case "AE":
                self = .addressEmail
            case "AM":
                self = .addressPhone
            default:
                return nil
        }
    }
}
