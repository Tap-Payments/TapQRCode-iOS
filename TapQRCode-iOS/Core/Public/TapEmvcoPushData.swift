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
    @objc public init(pointOfInitiation:TapEmvcoOfInitiation,
               merchantPaymentTags:[TapEmvcoPaymentNetwork],
               transactionAmount:Float = 0,
               transactionCurrency:TapEmvcoCurrencyCode,
               extraFeesMode:TapEmvcoExtraFees = .FixedFees,
               extraFeesAmount:Float = 0,
               countryCode:TapEmvcoCountryCode,
               merchantCategoryCode:String,
               merchantName:String,
               merchantCity:String,
               postalCode:String? = nil,
               additionData:TapEmvcoAdditionalData?
               ) throws
    {
        super.init()
        
        do {
            try commonInit(pointOfInitiation:pointOfInitiation,
                    merchantPaymentTags:merchantPaymentTags,
                    transactionAmount:transactionAmount,
                    transactionCurrency:transactionCurrency,
                    extraFeesMode:extraFeesMode,
                    extraFeesAmount:extraFeesAmount,
                    countryCode:countryCode,
                    merchantCategoryCode:merchantCategoryCode,
                    merchantName:merchantName,
                    merchantCity:merchantName,
                    postalCode:postalCode,
                    additionData:additionData)
        }catch{ throw error }
    }
    
    /**
       A common unified method to create the object from any different init method
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
    
    private func commonInit(pointOfInitiation:TapEmvcoOfInitiation,
                            merchantPaymentTags:[TapEmvcoPaymentNetwork],
                            transactionAmount:Float = 0,
                            transactionCurrency:TapEmvcoCurrencyCode,
                            extraFeesMode:TapEmvcoExtraFees = .FixedFees,
                            extraFeesAmount:Float = 0,
                            countryCode:TapEmvcoCountryCode,
                            merchantCategoryCode:String,
                            merchantName:String,
                            merchantCity:String,
                            postalCode:String? = nil,
                            additionData:TapEmvcoAdditionalData?) throws
    {
        // This is by default
          pushPaymentData.payloadFormatIndicator = "01"
          pushPaymentData.crc = "6403"
        
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
        if transactionAmount > 0 {
            pushPaymentData.transactionAmount = String(transactionAmount)
        }
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
        
        
        // Validate everything
        do {
            // Validate generated data
            try pushPaymentData.generatePushPaymentString()
        } catch {
            print("Error occurred during validation \(error)")
            throw "Error occurred during validation \(error)"
        }
    }
    /**
     Provides an interface to create TapEmvcoPushData from a given Dictionary
     - Parameter withDictionary: The Dictionary that holds the data needed for the emvco code. Please see the format at [Tap Emvco JSON Template](https://api.myjson.com/bins/qyagi)
     */
    @objc public init(withDictionary:[String:Any]) throws
    {
        super.init()
       
        var pointOfInitiation:TapEmvcoOfInitiation = .Dynamic
        // We need to chek if the dictionary has a pointOfInitiation code
        if let nonNullPointOfInitiation = withDictionary["pointOfInitiation"] as? String {
                   if let parsedPointOfInitiation:TapEmvcoOfInitiation = TapEmvcoOfInitiation.init(rawValue: nonNullPointOfInitiation) {
                       pointOfInitiation = parsedPointOfInitiation
                   }else { throw "Invalid pointOfInitiation" }
               }else { throw "You have to enter a pointOfInitiation" }
        
        // Next we will collect the required merchant info data
        var merchantName = ""
        var merchantCategoryCode = ""
        var merchantCity = ""
        var merchantPaymentTags:[TapEmvcoPaymentNetwork] = []
        
        if let nonNullmerchantCategoryCode = withDictionary["merchantCategoryCode"] as? String {
            merchantCategoryCode = nonNullmerchantCategoryCode
        }else { throw "Enter a valid merchantCategoryCode" }
        if let nonNullmerchantName = withDictionary["merchantName"] as? String {
            merchantName = nonNullmerchantName
        }else { throw "Enter a valid merchantName" }
        if let nonNullmerchantCity = withDictionary["merchantCity"] as? String {
            merchantCity = nonNullmerchantCity
        }else { throw "Enter a valid merchantCity" }
        
        // Next we collect the payment tags information
        if let paymentNetworks:[[String:String]] = withDictionary["paymentNetworks"] as? [[String:String]] {
            for paymentNetwork in paymentNetworks {
                if let paymentTag:TapEmvcoNetworkTags = TapEmvcoNetworkTags.init(rawValue: paymentNetwork["tag"] ?? ""), let paymentValue:String = paymentNetwork["value"]
                {
                    let paymentNetworkValue:TapEmvcoPaymentNetwork = TapEmvcoPaymentNetwork(with: paymentTag, value: paymentValue)
                    merchantPaymentTags.append(paymentNetworkValue)
                }else { throw "Enter a valid Payment Network Tag and Values" }
            }
        }else { throw "You need to provide paymentNetworks tags and values" }
        
        var countryCode:TapEmvcoCountryCode = .KW
        var postalCode:String? = ""
        
        if let nonNullCountryCode = withDictionary["countryCode"] as? String {
            if let parsedCountryCode:TapEmvcoCountryCode = TapEmvcoCountryCode.init(rawValue: nonNullCountryCode) {
                countryCode = parsedCountryCode
            }else { throw "Invalid countryCode" }
        }else { throw "You have to enter a countryCode" }
        
        if let nonNullPostalCode = withDictionary["postalCode"] as? String {
            postalCode = nonNullPostalCode
        }else {
            postalCode = nil
        }
        
        
        // Add the amount related data
        var transactionAmount:Float = 0.0
        var transactionCurrencyCode:TapEmvcoCurrencyCode = .KWD
        var extraFeesMode:TapEmvcoExtraFees = .FixedFees
        var extraFeesAmount:Float = 0.0
        
        if let nonNulltransactionCurrencyCode = withDictionary["transactionCurrencyCode"] as? String {
            if let parsedTransactionCurrencyCode:TapEmvcoCurrencyCode = TapEmvcoCurrencyCode.init(rawValue: nonNulltransactionCurrencyCode) {
                transactionCurrencyCode = parsedTransactionCurrencyCode
            }else { throw "Invalid transactionCurrencyCode" }
        }else { throw "You have to enter a transactionCurrencyCode" }
        
        if let nonNullTransactionAmount = withDictionary["transactionAmount"] as? Float {
            transactionAmount = nonNullTransactionAmount
        }

        if let nonNullExtraFeesMode = withDictionary["extraFeesMode"] as? String {
            if let parsedExtraFeesMode:TapEmvcoExtraFees = TapEmvcoExtraFees.init(rawValue: nonNullExtraFeesMode) {
                extraFeesMode = parsedExtraFeesMode
            }else { throw "Invalid extraFeesMode" }
        }
        
        if let nonNullExtraFeesAmount = withDictionary["extraFeesAmount"] as? Float {
            extraFeesAmount = nonNullExtraFeesAmount
        }
        
        // Then finally we collect any data about the accepted extra fields
        let billNumber:String? = withDictionary["billNumber"] as? String
        
        let customerLabel:String? = withDictionary["customerLabel"] as? String
        
        let loyaltyNumber:String? = withDictionary["loyaltyNumber"] as? String
        
        let mobileNumber:String? = withDictionary["mobileNumber"] as? String
        
        let purposeForTransaction:String? = withDictionary["purposeForTransaction"] as? String
        
        let storeLabel:String? = withDictionary["storeLabel"] as? String
        
        let terminalLabel:String? = withDictionary["terminalLabel"] as? String
        
        var additionalCustomerDataCollection:TapEmvcoAdditionalDataCollection = .None
        
        if let nonNullAdditionalCustomerDataCollection = withDictionary["additionalCustomerDataCollection"] as? String {
            if let parsedAdditionalCustomerDataCollection:TapEmvcoAdditionalDataCollection = TapEmvcoAdditionalDataCollection.init(rawValue: nonNullAdditionalCustomerDataCollection) {
                additionalCustomerDataCollection = parsedAdditionalCustomerDataCollection
            }else { throw "Invalid additionalCustomerDataCollection" }
        }
        
        do {
            try commonInit(pointOfInitiation:pointOfInitiation,
                    merchantPaymentTags:merchantPaymentTags,
                    transactionAmount:transactionAmount,
                    transactionCurrency:transactionCurrencyCode,
                    extraFeesMode:extraFeesMode,
                    extraFeesAmount:extraFeesAmount,
                    countryCode:countryCode,
                    merchantCategoryCode:merchantCategoryCode,
                    merchantName:merchantName,
                    merchantCity:merchantCity,
                    postalCode:postalCode,
                    additionData:.init(billNumber: billNumber, customerLabel: customerLabel, loyaltyNumber: loyaltyNumber, mobileNumber: mobileNumber, purposeForTransaction: purposeForTransaction, storeLabel: storeLabel, terminalLabel: terminalLabel, additionalCustomerDataCollection: additionalCustomerDataCollection))
        }catch{ throw error }
    }
}






extension String: LocalizedError {
    public var errorDescription: String? { return self }
}
