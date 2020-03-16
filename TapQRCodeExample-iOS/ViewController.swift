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
        // Do any additional setup after loading the view.
        
        qrImageView.image = TapQRCodeGenerator.generateQrCode(with: .init(withUrl: URL(string: "https://docs.swift.org/swift-book/LanguageGuide/Enumerations.html")!))
        
    }


}

