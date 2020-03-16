//
//  QRImageViewController.swift
//  TapQRCodeExample-iOS
//
//  Created by Osama Rabie on 16/03/2020.
//  Copyright © 2020 Tap Payments. All rights reserved.
//

import UIKit
import TapQRCode_iOS
class QRImageViewController: UIViewController {

    @IBOutlet weak var qrImageView: UIImageView!
    var tapQrCodeContent:TapQrCodeContent?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let nonNullTapQrContent = tapQrCodeContent
        {
            qrImageView.image = TapQRCodeGenerator.generateQrCode(with: nonNullTapQrContent)
        }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
