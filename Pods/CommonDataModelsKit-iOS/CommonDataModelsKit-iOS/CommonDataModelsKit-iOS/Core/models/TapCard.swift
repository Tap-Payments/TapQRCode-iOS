//
//  ScannedTapCard.swift
//  TapCommonDataModelsKits
//
//  Created by Osama Rabie on 12/04/2020.
//  Copyright © 2020 Tap Payments. All rights reserved.
//

import Foundation

/// This is the model the scanner will return after scanning a card
@objc public class TapCard:NSObject {
    
    /// Represents the  card number if any. Otherwise, it will be nil
    @objc public var tapCardNumber:String?
    /// Represents the  card name if any. Otherwise, it will be nil
    @objc public var tapCardName:String?
    /// Represents the  card expiration month MM if any. Otherwise, it will be nil
    @objc public var tapCardExpiryMonth:String?
    /// Represents the  card exxpiration year YYYY or YY if any. Otherwise, it will be nil
    @objc public var tapCardExpiryYear:String?
    
    /**
     This is the default constructor for creating the TapCard model
     - Parameter tapCardNumber: Represents the card number if any. Otherwise, it will be nil
     - Parameter tapCardName: Represents the card name if any. Otherwise, it will be nil
     - Parameter tapCardExpiryMonth: Represents the card expiration month MM if any. Otherwise, it will be nil
     - Parameter tapCardExpiryYear: Represents the card exxpiration year YYYY or YY if any. Otherwise, it will be nil
     */
    @objc public init(tapCardNumber:String? = nil,tapCardName:String? = nil,tapCardExpiryMonth:String? = nil, tapCardExpiryYear:String? = nil) {
        
        super.init()
        
        self.tapCardNumber = tapCardNumber
        self.tapCardName = tapCardName
        self.tapCardExpiryMonth = tapCardExpiryMonth
        self.tapCardExpiryYear = tapCardExpiryYear
    }
    
}
