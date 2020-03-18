//
//  TapQRCodeScannerResult.swift
//  TapQRCode-iOS
//
//  Created by Osama Rabie on 18/03/2020.
//  Copyright © 2020 Tap Payments. All rights reserved.
//

import Foundation
import class MasterpassQRCoreSDK.PushPaymentData
import class MasterpassQRCoreSDK.MPQRParser

/// This class will represent the result coming back from the Tap scanner
@objcMembers public class TapQRCodeScannerResult:NSObject {
    
    /// The raw string scanned from the scanner
    public var scannedText:String?
    /// The representation of the standardized emvco push data if a valid scanned one is provided
    public var scannedEmvcoPushData:PushPaymentData?
    
    
    init(scannedText:String) {
        super.init()
        self.scannedText = scannedText
        do {
            scannedEmvcoPushData = try MPQRParser.parse(string: scannedText)
        }catch{
            scannedEmvcoPushData = nil
            print("Scanned text is not a valid emvco code")
        }
    }
    
}
