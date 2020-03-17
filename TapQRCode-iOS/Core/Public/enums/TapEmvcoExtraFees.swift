//
//  TapEmvcoExtraFees.swift
//  TapQRCode-iOS
//
//  Created by Osama Rabie on 16/03/2020.
//  Copyright © 2020 Tap Payments. All rights reserved.
//

import Foundation

/**If present, the Tip or Convenience Indicator shall contain a value of "01", "02" or "03". All other values are RFU.
- A value of "01" shall be used if the mobile application should prompt the consumer to enter a tip to be paid to the merchant.
- A value of "02" shall be used to indicate inclusion of the data object Value of Convenience Fee Fixed (ID "56").
- A value of “03” shall be used to indicate inclusion of the data object Value of Convenience Fee Percentage (ID “57”).
**/

@objc public enum TapEmvcoExtraFees: Int, RawRepresentable, CaseIterable {
    /// A value of "01" shall be used if the mobile application should prompt the consumer to enter a tip to be paid to the merchant.
    case PromptPayer
    /// A value of "02" shall be used to indicate inclusion of the data object Value of Convenience Fee Fixed (ID "56").
    case FixedFees
    /// A value of “03” shall be used to indicate inclusion of the data object Value of Convenience Fee Percentage (ID “57”).
    case PercentageFees

    public typealias RawValue = String

    public var rawValue: RawValue {
        switch self {
        case .PromptPayer:
            return "01"
        case .FixedFees:
            return "02"
        case .PercentageFees:
            return "03"
        }
    }
    
    public init?(rawValue: RawValue) {
        switch rawValue.lowercased() {
            case "01":
                self = .PromptPayer
            case "02":
                self = .FixedFees
            case "03":
                self = .PercentageFees
            default:
                return nil
        }
    }
}
