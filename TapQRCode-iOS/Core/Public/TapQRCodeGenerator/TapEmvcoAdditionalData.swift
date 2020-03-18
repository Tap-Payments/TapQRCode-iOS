//
//  TapEmvcoadditionalData?.swift
//  TapQRCode-iOS
//
//  Created by Osama Rabie on 16/03/2020.
//  Copyright © 2020 Tap Payments. All rights reserved.
//

import Foundation
import class MasterpassQRCoreSDK.AdditionalData
/// This is a class model to representAdditional Data Field Template (ID "62")
@objc public class TapEmvcoAdditionalData:NSObject
{
    /// The invoice number or bill number, will always be truncated to first 25 charachters
    internal var billNumber:String?
    
    /// This value could be provided by the merchant, if known, or could be an indication to the mobile application to provide a prompt that will allow the consumer to input their Customer Label, will always be truncated to first 25 charachters
    internal var customerLabel:String?
    
    ///  Typically a loyalty card number., will always be truncated to first 25 charachters
    internal var loyaltyNumber:String?
    
    ///  Mobile phone number to be used for multiple use cases, such as mobile top- up and bill payment, will always be truncated to first 25 charachters
    internal var mobileNumber:String?
    
    ///  Any value as defined by the merchant or acquirer in order to define the purpose of the transaction, will always be truncated to first 25 charachters
    internal var purposeForTransaction:String?
    
    ///  A distinctive id associated to a store, will always be truncated to first 25 charachters
    internal var storeLabel:String?
    
    ///  A distinctive id associated to a terminal inside a store, will always be truncated to first 25 charachters
    internal var terminalLabel:String?
    
    /// Contains indications that the mobile application should include the requested information in order to complete the transaction. The information requested should be provided by the mobile application in the authorization without unnecessarily prompting the consumer. If present, the Additional Consumer Data Request (ID "09") shall contain any combination of the characters: "A", "M" and/or "E", and there shall only be a single instance of each of these characters.
    internal var additionalCustomerDataCollection:TapEmvcoAdditionalDataCollection?
    
    /// This will be used to calculate and map the inpt from the merchant to acceptabld AdditionalData object for EMVCO request
    internal var additionalData:AdditionalData? = AdditionalData()
    
    
    /**
     Creates an additional data accepted object by EMVCO
     - Parameter billNumber: The invoice number or bill number, will always be truncated to first 25 charachters. Write it as *** if you want the mobile app to gather it
     - Parameter customerLabel: This value could be provided by the merchant, if known, or could be an indication to the mobile application to provide a prompt that will allow the consumer to input their Customer Label, will always be truncated to first 25 charachters Write it as *** if you want the mobile app to gather it
     - Parameter loyaltyNumber: Typically a loyalty card number., will always be truncated to first 25 charachters Write it as *** if you want the mobile app to gather it
     - Parameter mobileNumber: Mobile phone number to be used for multiple use cases, such as mobile top- up and bill payment, will always be truncated to first 25 charachters Write it as *** if you want the mobile app to gather it
     - Parameter purposeForTransaction: Any value as defined by the merchant or acquirer in order to define the purpose of the transaction, will always be truncated to first 25 charachters Write it as *** if you want the mobile app to gather it
     - Parameter storeLabel: A distinctive id associated to a store, will always be truncated to first 25 charachters Write it as *** if you want the mobile app to gather it
     - Parameter terminalLabel: A distinctive id associated to a terminal inside a store, will always be truncated to first 25 charachters Write it as *** if you want the mobile app to gather it
     - Parameter additionalCustomerDataCollection: Contains indications that the mobile application should include the requested information in order to complete the transaction. The information requested should be provided by the mobile application in the authorization without unnecessarily prompting the consumer. If present, the Additional Consumer Data Request (ID "09") shall contain any combination of the characters: "A", "M" and/or "E", and there shall only be a single instance of each of these characters.
     **/
    @objc public init(billNumber:String? = nil,
                               customerLabel:String? = nil,
                               loyaltyNumber:String? = nil,
                               mobileNumber:String? = nil,
                               purposeForTransaction:String? = nil,
                               storeLabel:String? = nil,
                               terminalLabel:String? = nil,
                               additionalCustomerDataCollection:TapEmvcoAdditionalDataCollection = .None) {
        
        super.init()
        
        
        // As per the rules, we only create AdditionalData if at least one of the fields are given, so we will have to check if any of them is given and create the request
        var shouldCreateAdditionalDataField:Bool = false
        
        if let nonNullBillNumber = billNumber {
            shouldCreateAdditionalDataField = true
            self.billNumber = nonNullBillNumber
            additionalData?.billNumber = self.billNumber
        }
        
        if let nonNullCustomerLabel = customerLabel {
            shouldCreateAdditionalDataField = true
            self.customerLabel = nonNullCustomerLabel
            additionalData?.consumerId = self.customerLabel
        }
        
        if let nonNullLoyaltyNumber = loyaltyNumber {
            shouldCreateAdditionalDataField = true
            self.loyaltyNumber = nonNullLoyaltyNumber
            additionalData?.loyaltyNumber = self.loyaltyNumber
        }
        
        if let nonNullMobileNumber = mobileNumber {
            shouldCreateAdditionalDataField = true
            self.mobileNumber = nonNullMobileNumber
            additionalData?.mobileNumber = self.mobileNumber
        }
        
        if let nonNullPurposeForTransaction = purposeForTransaction {
            shouldCreateAdditionalDataField = true
            self.purposeForTransaction = nonNullPurposeForTransaction
            additionalData?.purpose = self.purposeForTransaction
        }
        
        if let nonNullStoreLabel = storeLabel {
            shouldCreateAdditionalDataField = true
            self.storeLabel = nonNullStoreLabel
            additionalData?.storeId = self.storeLabel
        }
        
        if let nonNullTerminalLabel = terminalLabel {
            shouldCreateAdditionalDataField = true
            self.terminalLabel = nonNullTerminalLabel
            additionalData?.terminalId = self.terminalLabel
        }
        
        self.additionalCustomerDataCollection = additionalCustomerDataCollection
        if additionalCustomerDataCollection != .None {
            shouldCreateAdditionalDataField = true
            additionalData?.additionalConsumerDataRequest = self.additionalCustomerDataCollection?.rawValue
        }
        
        if !shouldCreateAdditionalDataField {
            additionalData = nil
        }
        
    }
    
    
}
