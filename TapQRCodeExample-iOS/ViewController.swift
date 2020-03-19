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

    @IBOutlet weak var loadingActivity: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       /*qrImageView.image = TapQRCodeGenerator.generateQrCode(with: .init(withEmv: TapEmvcoPushData(pointOfInitiation: .Dynamic, merchantPaymentTags: [.init(with: .VisaTag02, value: "4600678934521435")], transactionAmount: 13, transactionCurrency: .EGP, extraFeesMode: .FixedFees, extraFeesAmount: 10, countryCode: .EG, merchantCategoryCode: "1711", merchantName: "Osama EMVCO", merchantCity: "Egypt", postalCode: nil, additionData: TapEmvcoAdditionalData(billNumber: "Bill 1234", customerLabel: "My Customer", mobileNumber: "00201009366361", purposeForTransaction: "Test Transaction"))))*/
    }

    @IBAction func scanClicked(_ sender: Any) {
        let alert:UIAlertController = UIAlertController(title: "Which Scanner?", message: "Please from where you want to get the qr code info", preferredStyle: .actionSheet)
        let fromImageAction:UIAlertAction = UIAlertAction(title: "From Gallery", style: .default) { [weak self] _ in
            DispatchQueue.main.async {
               let imagePicker:UIImagePickerController =  UIImagePickerController()
                          imagePicker.delegate = self
                          imagePicker.sourceType = UIImagePickerController.SourceType.photoLibrary
                          imagePicker.allowsEditing = true
                          self?.present(imagePicker, animated: true, completion: nil)
            }
        }
        let inlineFromCameraAction:UIAlertAction = UIAlertAction(title: "Inline Camera", style: .default) { [weak self] _ in
            DispatchQueue.main.async {
                self?.performSegue(withIdentifier: "scanSeg", sender: self)
            }
        }
        let fullSCreenFromCameraAction:UIAlertAction = UIAlertAction(title: "Full Screen Camera No Buttons", style: .default) { [weak self] _ in
            DispatchQueue.main.async { [unowned self] in
                TapQRCodeScanner().scan(fullScreen: self,
                                        scannedCodeCallBack: { [weak self] scannedValue in
                                            self?.showAlert(with: "Scanned", message: scannedValue.scannedText ?? "")
                                        })
            }
        }
        
        let fullSCreenFromCameraAction2:UIAlertAction = UIAlertAction(title: "Full Screen Camera With Buttons", style: .default) { [weak self] _ in
            DispatchQueue.main.async { [unowned self] in
                TapQRCodeScanner().scan(fullScreen: self,
                                        showTorchButton: true,
                                        showSwitchCameraButton: true,
                                        torchButtonIcon: UIImage(named: "torchIcon"),
                                        scannedCodeCallBack: { [weak self] scannedValue in
                                            self?.showAlert(with: "Scanned", message: scannedValue.scannedText ?? "")
                                        })
            }
        }
        let cancelAction:UIAlertAction = UIAlertAction(title: "Cancel", style: .cancel) { [unowned alert] _ in
            alert.dismiss(animated: true, completion: nil)
        }
        
        alert.addAction(fromImageAction)
        alert.addAction(inlineFromCameraAction)
        alert.addAction(fullSCreenFromCameraAction)
        alert.addAction(fullSCreenFromCameraAction2)
        alert.addAction(cancelAction)
        self.present(alert,animated: true)
    }
    
    internal func showAlert(with title:String,message:String) {
        DispatchQueue.main.async {
            let alertControl =  UIAlertController(title: title, message: message, preferredStyle: .alert)
            
            let okAction = UIAlertAction(title: "OK", style: .cancel) { [unowned alertControl] _ in
                alertControl.dismiss(animated: true, completion: nil)
            }
            
            alertControl.addAction(okAction)
            self.present(alertControl,animated: true)
        }
    }
}

extension ViewController:UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    
     func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        DispatchQueue.main.async { [unowned picker, weak self] in
            self?.loadingActivity.isHidden = false
            picker.dismiss(animated: true) {
                if let pickedImage = info[.originalImage] as? UIImage {
                    // imageViewPic.contentMode = .scaleToFill
                    let res:TapQRCodeScannerResult = TapQRCodeScanner().scan(from: pickedImage)
                    print(res.scannedText ?? "")
                    self?.showAlert(with: "Scanned", message: res.scannedText ?? "")
                }
                self?.loadingActivity.isHidden = true
            }
        }
    }
}

