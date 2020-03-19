//
//  TapScannerViewController.swift
//  TapQRCodeExample-iOS
//
//  Created by Osama Rabie on 18/03/2020.
//  Copyright © 2020 Tap Payments. All rights reserved.
//

import UIKit
import TapQRCode_iOS
import TactileSlider

class TapScannerViewController: UIViewController {

    @IBOutlet weak var inlineView: UIView!
    @IBOutlet weak var inlineSwitch: UISwitch!
    @IBOutlet weak var introSwitch: UISwitch!
    @IBOutlet weak var outroSwitch: UISwitch!
    @IBOutlet weak var dismissAfterScanningSwitch: UISwitch!
    @IBOutlet weak var widthSlider: TactileSlider!
    @IBOutlet weak var previewFrameWidthConstraint: NSLayoutConstraint!
    lazy var tapBarCodeScanner:TapQRCodeScanner = TapQRCodeScanner()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inlineView.translatesAutoresizingMaskIntoConstraints = false
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
        if inlineSwitch.isOn {
            tapBarCodeScanner.scan(inside: inlineView,
                                        shouldHideUponScanning: dismissAfterScanningSwitch.isOn,
                                        erroCallBack: { [weak self] error in
                                            self?.inlineSwitch.setOn(false, animated: true)
                                            self?.showAlert(with: "Error", message: error)
                                        },scannedCodeCallBack: { [weak self] tapScanResult in
                                            self?.showAlert(with: "Scanned", message: tapScanResult.scannedText!)
                                        },scannerRemovedCallBack: { [weak self] in
                                            self?.inlineSwitch.setOn(false, animated: true)
                                        },introFadeIn: introSwitch.isOn,
                                          outroFadeOut: outroSwitch.isOn)
        }else {
            tapBarCodeScanner.stopInlineScanning()
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
    
    @IBAction func widthValueChanged(_ sender: Any) {
        inlineView.setNeedsDisplay()
        inlineView.updateConstraints()
        previewFrameWidthConstraint.constant = CGFloat((sender as! TactileSlider).value)
        inlineView.setNeedsDisplay()
        inlineView.updateConstraints()
    }
    
    @IBAction func dimissAfterScanChanged(_ sender: Any) {
        inlineSwitch.setOn(false, animated: true)
    }
    
    
    @IBAction func introChanged(_ sender: Any) {
        inlineSwitch.setOn(false, animated: true)
    }
    
    @IBAction func outroChanged(_ sender: Any) {
        inlineSwitch.setOn(false, animated: true)
    }
}
