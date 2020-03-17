//
//  TapEmvcoNetworkTags.swift
//  TapQRCode-iOS
//
//  Created by Osama Rabie on 15/03/2020.
//  Copyright © 2020 Tap Payments. All rights reserved.
//


/// Enum to define  the supported types of qr codes
@objc public enum TapEmvcoNetworkTags: Int, RawRepresentable, CaseIterable {
    /// Merchant identefier for visa tag 02
    case VisaTag02
    /// Merchant identefier for visa tag 03
    case VisaTag03
    /// Merchant identefier for master tag 04
    case MasterTag04
    /// Merchant identefier for master tag 05
    case MasterTag05
    /// Merchant identefier for NPCI tag 06
    case NPCITag06
    /// Merchant identefier for NPCI tag 07
    case NPCITag07
    /// Merchant identefier for AMEX tag 011
    case AmexTag011
    /// Merchant identefier for AMEX tag 012
    case AmexTag012
    
    
    /// Coming constcutors to spport creating enums from String in case of parsing it from JSON
    public init?(rawValue: String) {
        switch rawValue.lowercased() {
            case "visatag02":
                self = .VisaTag02
            case "visatag03":
                self = .VisaTag03
            case "mastertag04":
                self = .MasterTag04
            case "mastertag05":
                self = .MasterTag05
            case "npcitag06":
                self = .NPCITag06
            case "npcitag07":
                self = .NPCITag07
            case "amextag011":
                self = .AmexTag011
            case "amextag012":
                self = .AmexTag012
            default:
                return nil
        }
    }
    
    public typealias RawValue = String
    
    public var rawValue: RawValue {
        switch self {
            case .VisaTag02:
                return "VisaTag02"
            case .VisaTag03:
                return "VisaTag03"
            case .MasterTag04:
                return "MasterTag04"
            case .MasterTag05:
                return "MasterTag05"
            case .NPCITag06:
                return "NPCITag06"
            case .NPCITag07:
                return "NPCITag07"
            case .AmexTag011:
                return "AmexTag011"
            case .AmexTag012:
                return "AmexTag012"
        }
    }
    
}
