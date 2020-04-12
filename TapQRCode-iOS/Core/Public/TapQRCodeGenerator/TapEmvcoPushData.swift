//
//  TapEmvcoPushData.swift
//  TapQRCode-iOS
//
//  Created by Osama Rabie on 15/03/2020.
//  Copyright © 2020 Tap Payments. All rights reserved.
//

import Foundation
import enum CommonDataModelsKit_iOS.TapCurrencyCode
import enum CommonDataModelsKit_iOS.TapCountryCode
import class MasterpassQRCoreSDK.PushPaymentData
import class MasterpassQRCoreSDK.AdditionalData

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
     - Parameter additionData: Defines the  Language Template (ID "64")
     */
    @objc public init(pointOfInitiation:TapEmvcoOfInitiation,
               merchantPaymentTags:[TapEmvcoPaymentNetwork],
               transactionAmount:Float = 0,
               transactionCurrency:TapCurrencyCode,
               extraFeesMode:TapEmvcoExtraFees = .FixedFees,
               extraFeesAmount:Float = 0,
               countryCode:TapCountryCode,
               merchantCategoryCode:String,
               merchantName:String,
               merchantCity:String,
               postalCode:String? = nil,
               additionData:TapEmvcoAdditionalData?,
               alternateLanguageData:TapEmvcoAlternateLanguage?
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
                    merchantCity:merchantCity,
                    postalCode:postalCode,
                    additionData:additionData,
                    alternateLanguageData:alternateLanguageData)
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
    - Parameter additionData: Defines the  Language Template (ID "64")
    */
    
    private func commonInit(pointOfInitiation:TapEmvcoOfInitiation,
                            merchantPaymentTags:[TapEmvcoPaymentNetwork],
                            transactionAmount:Float = 0,
                            transactionCurrency:TapCurrencyCode,
                            extraFeesMode:TapEmvcoExtraFees = .FixedFees,
                            extraFeesAmount:Float = 0,
                            countryCode:TapCountryCode,
                            merchantCategoryCode:String,
                            merchantName:String,
                            merchantCity:String,
                            postalCode:String? = nil,
                            additionData:TapEmvcoAdditionalData?,
                            alternateLanguageData:TapEmvcoAlternateLanguage?) throws
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
        pushPaymentData.transactionCurrencyCode = transactionCurrency.emvcoRawValue

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
        
        // Add the alternate language data if any
        if let languageData = alternateLanguageData {
            pushPaymentData.languageData = languageData.languageData
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
     - Parameter withDictionary: The Dictionary that holds the data needed for the emvco code. Please see the format at [Tap Emvco JSON Template](https://api.myjson.com/bins/m6vbo)
     */
    @objc public init(withDictionary:[String:Any]) throws
    {
        super.init()
       
        var pointOfInitiation:TapEmvcoOfInitiation = .Dynamic
        // We need to chek if the dictionary has a pointOfInitiation code
        if let nonNullPointOfInitiation = withDictionary["pointOfInitiation"] as? String {
                   if let parsedPointOfInitiation:TapEmvcoOfInitiation = TapEmvcoOfInitiation.init(rawValue: nonNullPointOfInitiation) {
                       pointOfInitiation = parsedPointOfInitiation
                   }else {
                    let values: String = TapEmvcoOfInitiation.allCases.map { "\($0.rawValue)" }.joined(separator: "\n")
                        throw "Invalid pointOfInitiation. Allowed values:\n\(values)"
                    }
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
                }else {
                    let values: String = TapEmvcoNetworkTags.allCases.map { "\($0.rawValue)" }.joined(separator: "\n")
                    throw "Enter a valid Payment Network Tag and Values. Allowed values:\n\(values)" }
            }
        }else { throw "You need to provide paymentNetworks tags and values" }
        
        var countryCode:TapCountryCode = .KW
        var postalCode:String? = ""
        
        if let nonNullCountryCode = withDictionary["countryCode"] as? String {
            if let parsedCountryCode:TapCountryCode = TapCountryCode.init(rawValue: nonNullCountryCode) {
                countryCode = parsedCountryCode
            }else { let values: String = TapCountryCode.allCases.map { "\($0.rawValue)" }.joined(separator: "\n")
            throw "Invalid Country code. Allowed values:\n\(values)" }
        }else { throw "You have to enter a countryCode" }
        
        if let nonNullPostalCode = withDictionary["postalCode"] as? String {
            postalCode = nonNullPostalCode
        }else {
            postalCode = nil
        }
        
        
        // Add the amount related data
        var transactionAmount:Float = 0.0
        var transactionCurrencyCode:TapCurrencyCode = .KWD
        var extraFeesMode:TapEmvcoExtraFees = .FixedFees
        var extraFeesAmount:Float = 0.0
        
        if let nonNulltransactionCurrencyCode = withDictionary["transactionCurrencyCode"] as? String {
            if let parsedTransactionCurrencyCode:TapCurrencyCode = TapCurrencyCode.init(emvcoRawValue: nonNulltransactionCurrencyCode) {
                transactionCurrencyCode = parsedTransactionCurrencyCode
            }else { let values: String = TapCurrencyCode.allCases.map { "\($0.rawValue)" }.joined(separator: "\n")
            throw "Invalid Currency code. Allowed values:\n\(values)" }
        }else { throw "You have to enter a transactionCurrencyCode" }
        
        if let nonNullTransactionAmount = withDictionary["transactionAmount"] as? Float {
            transactionAmount = nonNullTransactionAmount
        }

        if let nonNullExtraFeesMode = withDictionary["extraFeesMode"] as? String {
            if let parsedExtraFeesMode:TapEmvcoExtraFees = TapEmvcoExtraFees.init(rawValue: nonNullExtraFeesMode) {
                extraFeesMode = parsedExtraFeesMode
            }else { let values: String = TapEmvcoExtraFees.allCases.map { "\($0.rawValue)" }.joined(separator: "\n")
            throw "Invalid extraFeesMode. Allowed values:\n\(values)" }
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
            }else { let values: String = TapEmvcoAdditionalDataCollection.allCases.map { "\($0.rawValue)" }.joined(separator: "\n")
            throw "Invalid additionalCustomerDataCollection. Allowed values:\n\(values)"}
        }
        
        var alternateLanguageData:TapEmvcoAlternateLanguage?
        
        // Alternate language data
        if let nonNullAlternateLanguageCode = withDictionary["alternateLanguageLocale"] as? String {
            if let parsedAlternateLanguageCode:TapAlternateLanguageEnum = TapAlternateLanguageEnum.init(rawValue: nonNullAlternateLanguageCode) {
                let alternateLanguageLocale = parsedAlternateLanguageCode
                
                let alternateLanguageMerchantName = withDictionary["alternateLanguageMerchantName"] as? String ?? ""
                let alternateLanguageMerchantCityName = withDictionary["alternateLanguageMerchantCityName"] as? String ?? ""
                
                alternateLanguageData = .init(with: alternateLanguageLocale, alternatLanguageMerchantName: alternateLanguageMerchantName, alternatLanguageMerchantCityName: alternateLanguageMerchantCityName)
                
            }else { let values: String = TapAlternateLanguageEnum.allCases.map { "\($0.rawValue)" }.joined(separator: "\n")
            throw "Invalid Alternate Language code. Allowed values:\n\(values)" }
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
                    additionData:.init(billNumber: billNumber, customerLabel: customerLabel, loyaltyNumber: loyaltyNumber, mobileNumber: mobileNumber, purposeForTransaction: purposeForTransaction, storeLabel: storeLabel, terminalLabel: terminalLabel, additionalCustomerDataCollection: additionalCustomerDataCollection), alternateLanguageData: alternateLanguageData)
        }catch{ throw error }
    }
    
    /**
     An interface when needed the emvco string not the qr code image
     - Returns: An EMVCO representable string
     - Throws: different errors while validating the emvco data attributes before generating an emvco string
     */
    @objc public func generateEmvcoString() throws -> String
    {
        do {
            let emvcoString = try pushPaymentData.generatePushPaymentString()
            return emvcoString
        }catch {
            throw "Error occurred during validation \(error)"
        }
    }
}






extension String: LocalizedError {
    public var errorDescription: String? { return self }
}
