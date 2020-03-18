//
//  TapScannerViewController.swift
//  TapQRCodeExample-iOS
//
//  Created by Osama Rabie on 18/03/2020.
//  Copyright © 2020 Tap Payments. All rights reserved.
//

import UIKit
import TapQRCode_iOS

class TapScannerViewController: UIViewController {

    @IBOutlet weak var inlineView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

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
    @IBAction func inlineScanningSwitch(_ sender: Any) {
        if (sender as! UISwitch).isOn {
            TapQRCodeScanner.scanInline(inside: inlineView, shouldHideUponScanning: false)
        }else {
            TapQRCodeScanner.stopInlineScanning()
        }
    }
    
}
