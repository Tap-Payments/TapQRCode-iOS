//
//  TapEmvcoNetworkTags.swift
//  TapQRCode-iOS
//
//  Created by Osama Rabie on 15/03/2020.
//  Copyright © 2020 Tap Payments. All rights reserved.
//


/// Enum to define  the supported types of qr codes
@objc public enum TapEmvcoNetworkTags: Int {
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
    
}
