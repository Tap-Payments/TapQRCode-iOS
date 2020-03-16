//
//  TapEmvcoPushData.swift
//  TapQRCode-iOS
//
//  Created by Osama Rabie on 15/03/2020.
//  Copyright © 2020 Tap Payments. All rights reserved.
//

import Foundation
import class MPQRCoreSDK.PushPaymentData

@objc public class TapEmvcoPushData:NSObject
{
    internal lazy var pushPaymentData:PushPaymentData = PushPaymentData()
    
    @objc init(pointOfInitiation:TapEmvcoOfInitiation = .Dynamic,
               merchantPaymentTags:[TapEmvcoPaymentNetwork],
               transactionAmount:Float = 0,
               transactionCurrency:TapEmvcoCurrencyCode = .KWD,
               extraFeesMode:TapEmvcoExtraFees = .FixedFees,
               extraFeesAmount:Float = 0,
               countryCode:TapEmvcoCountryCode = .KW
               )
    {
        
    }
}
