//
//  TapEmvcoAlternateLanguage.swift
//  TapQRCode-iOS
//
//  Created by Osama Rabie on 19/03/2020.
//  Copyright © 2020 Tap Payments. All rights reserved.
//

import Foundation
import class MasterpassQRCoreSDK.LanguageData

/// This is a class model to represent Language Template (ID "64")
@objc public class TapEmvcoAlternateLanguage:NSObject
{
    /// The altrenate langage locale which is  Language Preference (ID “00”) in Language Template (ID “64”)
    internal var alternatLanguageLocale:TapAlternateLanguageEnum = .en
    /// A value that represents the alternate merchant name which is Merchant Name—Alternate Language (ID "01") in Language Template (ID “64”)
    internal var alternatLanguageMerchantName:String = ""
    /// A value that represents the alternate merchant city name which is Merchant City—Alternate Language (ID "02") in Language Template (ID “64”)
    internal var alternatLanguageMerchantCityName:String = ""
    
    internal var languageData:LanguageData = LanguageData()
    /**
     Creates a TapEmvcoPaymentNetwork object
     - Parameter tag: Indicates which EMVCO merchant idenrefier tag this object represents (e.g. 02-03 VISA, 04-05 MasterCard, etc.)
     - Parameter value: an up to 32 length string that provides the Globally Unique Identifier of the merchant for the given tag
     */
    @objc public init(with alternatLanguageLocale:TapAlternateLanguageEnum, alternatLanguageMerchantName:String,alternatLanguageMerchantCityName:String)
    {
        super.init()
        self.alternatLanguageLocale = alternatLanguageLocale
        self.alternatLanguageMerchantName = alternatLanguageMerchantName
        self.alternatLanguageMerchantCityName = alternatLanguageMerchantCityName
        
        self.languageData.languagePreference = alternatLanguageLocale.rawValue
        self.languageData.alternateMerchantName = alternatLanguageMerchantName
        self.languageData.alternateMerchantCity = alternatLanguageMerchantCityName
    }
    
}
