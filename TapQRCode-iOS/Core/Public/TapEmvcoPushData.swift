//
//  TapEmvcoPushData.swift
//  TapQRCode-iOS
//
//  Created by Osama Rabie on 15/03/2020.
//  Copyright © 2020 Tap Payments. All rights reserved.
//

import Foundation
import class MPQRCoreSDK.PushPaymentData
import class MPQRCoreSDK.AdditionalData

/// Class represents the Push Payment data object, which matches the given merchant value to the Standardized format of Emvco Push Data
@objc public class TapEmvcoPushData:NSObject
{
    /// This will internally contain the matched and standardized EMVCO push data
    internal lazy var pushPaymentData:PushPaymentData = PushPaymentData()
    
    /**
        Creates a TapEmvcoPushData data object to use in creating EMVCO QR Code
     - Parameter pointOfInitiation:  Defines whether the QR code is a static or a dynamic one. Static is payable multiple while dynamic is payable once.
     - Parameter merchantPaymentTags:  Provides a list of merchant global identifers for different payment network tags
     - Parameter transactionAmount:  The amount of the transaction, please note that the decimal part should match the official decimal part of the given currency code
     - Parameter transactionCurrency:  The currency of the transaction
     - Parameter extraFeesMode:  Defines the extra fees collection mode, whether NONE, or a fixed fee or a percentage of the total amount or promop the user to enter whatever he wants
     - Parameter extraFeesAmount:  Defines the value of the extra fees, if NONE or Promopt no need to pass it, if fixed then a number > 0 and if percentage "00.01” and “99.99” shall be used
     - Parameter countryCode:  Defines the country code where the merchant transacts
     - Parameter merchantCategoryCode: Defines the code of the merchant nature as defined in the  ISO 18245. For more information, see  [ISO 18245].(https://www.iso.org/standard/33365.html)
     - Parameter merchantName:  Defines the  merchant's name up to 25
     - Parameter merchantCity:  Defines the city of the merchant up to 25
     - Parameter postalCode:  Defines postal code address of he merchant up to 25
     - Parameter additionData:Defines the Additional Data Field Template (ID "62")
     */
    @objc init(pointOfInitiation:TapEmvcoOfInitiation,
               merchantPaymentTags:[TapEmvcoPaymentNetwork],
               transactionAmount:Float = 0,
               transactionCurrency:TapEmvcoCurrencyCode,
               extraFeesMode:TapEmvcoExtraFees = .FixedFees,
               extraFeesAmount:Float = 0,
               countryCode:TapEmvcoCountryCode,
               merchantCategoryCode:String,
               merchantName:String,
               merchantCity:String,
               postalCode:String?,
               additionData:TapEmvcoAdditionalData?
               )
    {
        super.init()
        
        // This is by default
        pushPaymentData.payloadFormatIndicator = "01"
        
        // Add the merchant related data
        pushPaymentData.merchantCategoryCode = merchantCategoryCode
        pushPaymentData.merchantName = merchantName
        pushPaymentData.merchantCity = merchantCity
        for paymentTag:TapEmvcoPaymentNetwork in merchantPaymentTags {
            paymentTag.addTo(pushPaymentData: pushPaymentData)
        }
        
        // Add the country related data
        pushPaymentData.countryCode = countryCode.rawValue
        if let nonNullPostalCode:String = postalCode {
            pushPaymentData.postalCode = nonNullPostalCode
        }
        
        // Add the amount related data
        pushPaymentData.transactionAmount = String(transactionAmount)
        pushPaymentData.transactionCurrencyCode = transactionCurrency.rawValue

        pushPaymentData.tipOrConvenienceIndicator = extraFeesMode.rawValue
        switch extraFeesMode {
            case .FixedFees:
                pushPaymentData.valueOfConvenienceFeeFixed = String(extraFeesAmount)
            case .PercentageFees:
                pushPaymentData.valueOfConvenienceFeePercentage = String(extraFeesAmount)
            default:
                pushPaymentData.valueOfConvenienceFeeFixed = "0"
                pushPaymentData.valueOfConvenienceFeePercentage = "0"
        }
        
        // Add the extra fees if any
        if let nonNullAditionalData:TapEmvcoAdditionalData = additionData,
            let nonNullEmvcoAdditionalData:AdditionalData = nonNullAditionalData.additionalData
        {
            pushPaymentData.additionalData = nonNullEmvcoAdditionalData
        }
        
        pushPaymentData.crc = "6403"
        
    }
}
