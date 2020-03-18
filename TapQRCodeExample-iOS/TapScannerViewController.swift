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
    @IBOutlet weak var inlineSwitch: UISwitch!
    
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
            TapQRCodeScanner.scanInline(inside: inlineView,
                                        erroCallBack: { [weak self] error in
                                            self?.showAlert(with: "Error", message: error)
                                        },scannedCodeCallBack: { [weak self] scannedCode in
                                            self?.showAlert(with: "Scanned", message: scannedCode)
                                        },scannerRemovedCallBack: { [weak self] in
                                            self?.inlineSwitch.setOn(false, animated: true)
                                        })
        }else {
            TapQRCodeScanner.stopInlineScanning()
        }
    }
    
    
    
    internal func showAlert(with title:String,message:String) {
        let alertControl =  UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .cancel) { [unowned alertControl] _ in
            alertControl.dismiss(animated: true, completion: nil)
        }
        
        alertControl.addAction(okAction)
        self.present(alertControl,animated: true)
    }
}
