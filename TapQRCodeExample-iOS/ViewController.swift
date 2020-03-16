//
//  ViewController.swift
//  TapQRCodeExample-iOS
//
//  Created by Osama Rabie on 15/03/2020.
//  Copyright © 2020 Tap Payments. All rights reserved.
//

import UIKit
import TapQRCode_iOS

class ViewController: UIViewController {

    @IBOutlet weak var qrImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
            
       /*qrImageView.image = TapQRCodeGenerator.generateQrCode(with: .init(withEmv: TapEmvcoPushData(pointOfInitiation: .Dynamic, merchantPaymentTags: [.init(with: .VisaTag02, value: "4600678934521435")], transactionAmount: 13, transactionCurrency: .EGP, extraFeesMode: .FixedFees, extraFeesAmount: 10, countryCode: .EG, merchantCategoryCode: "1711", merchantName: "Osama EMVCO", merchantCity: "Egypt", postalCode: nil, additionData: TapEmvcoAdditionalData(billNumber: "Bill 1234", customerLabel: "My Customer", mobileNumber: "00201009366361", purposeForTransaction: "Test Transaction"))))*/
        
    }


}

