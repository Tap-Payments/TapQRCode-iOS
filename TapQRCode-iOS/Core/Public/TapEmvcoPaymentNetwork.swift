//
//  TapEmvcoPaymentNetwork.swift
//  TapQRCode-iOS
//
//  Created by Osama Rabie on 15/03/2020.
//  Copyright © 2020 Tap Payments. All rights reserved.
//

import class MasterpassQRCoreSDK.PushPaymentData
/// This is a class model to represent a supported network payment for EMVCO merchant identefiers networks tags
@objc public class TapEmvcoPaymentNetwork:NSObject
{
    /// A tag to indicate to which EMVCO merchant identifer tag we will attach a value
    internal var tag:TapEmvcoNetworkTags = .VisaTag02
    /// A value that represents the merchant identefier for the given tag
    internal var value:String = ""
    
    /**
     Creates a TapEmvcoPaymentNetwork object
     - Parameter tag: Indicates which EMVCO merchant idenrefier tag this object represents (e.g. 02-03 VISA, 04-05 MasterCard, etc.)
     - Parameter value: an up to 32 length string that provides the Globally Unique Identifier of the merchant for the given tag
     */
    @objc public init(with tag:TapEmvcoNetworkTags, value:String)
    {
        super.init()
        self.tag = tag
        self.value = value
    }
    
    
    /**
        Matches  the TAP wrapper tag to the actual EMVCO merchant identifer tag
     - Parameter pushPaymentData: The emvco payment push  data we will add the value to it
     */
    internal func addTo(pushPaymentData:PushPaymentData)
    {
        switch self.tag {
            
        case .VisaTag02:
            pushPaymentData.merchantIdentifierVisa02 = self.value
        case .VisaTag03:
            pushPaymentData.merchantIdentifierVisa03 = self.value
        case .MasterTag04:
            pushPaymentData.merchantIdentifierMastercard04 = self.value
        case .MasterTag05:
            pushPaymentData.merchantIdentifierMastercard05 = self.value
        case .NPCITag06:
            pushPaymentData.merchantIdentifierNPCI06 = self.value
        case .NPCITag07:
            pushPaymentData.merchantIdentifierNPCI07 = self.value
        case .AmexTag011:
            pushPaymentData.merchantIdentifierAMEX11 = self.value
        case .AmexTag012:
            pushPaymentData.merchantIdentifierAMEX12 = self.value
        }
    }
}
