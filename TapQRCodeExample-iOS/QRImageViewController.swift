//
//  QRImageViewController.swift
//  TapQRCodeExample-iOS
//
//  Created by Osama Rabie on 16/03/2020.
//  Copyright © 2020 Tap Payments. All rights reserved.
//

import UIKit
import TapQRCode_iOS
import SheetyColors

class QRImageViewController: UIViewController {

    @IBOutlet weak var qrImageView: UIImageView!
    var tapQrCodeContent:TapQrCodeContent?
    @IBOutlet weak var backgroundButton: UIButton!
    @IBOutlet weak var foregroundButton: UIButton!
    
    var currentForeground:UIColor = .black
    var currentBackground:UIColor = .clear
    var currentLogo:UIImage? = UIImage(named: "tap")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if #available(iOS 13.0, *) {
            if self.traitCollection.userInterfaceStyle == .dark {
                currentForeground = .white
            }
        }
        drawQR()
        // Do any additional setup after loading the view.
    }
    
    
    private func drawQR()
    {
        if let nonNullTapQrContent = tapQrCodeContent
        {
            qrImageView.image = TapQRCodeGenerator.generateQrCode(with: nonNullTapQrContent,foreGroundColor: currentForeground,backgroundColor: currentBackground,waterMark: currentLogo!)
        }
    }
    
    @IBAction func foregroundButtonClicked(_ sender: Any) {
        
        // Create a SheetyColors view with your configuration
        let config = SheetyColorsConfig(alphaEnabled: true, hapticFeedbackEnabled: true,initialColor: currentForeground, title: "Create a color", type: .rgb)
        let sheetyColors = SheetyColorsController(withConfig: config)

        // Add a button to accept the selected color
        let selectAction = UIAlertAction(title: "Select", style: .destructive) { [weak self] (_)  in
            self?.currentForeground = sheetyColors.color
            self?.drawQR()
        }
        sheetyColors.addAction(selectAction)

        // Add a cancel button
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        sheetyColors.addAction(cancelAction)

        // Now, present it to the user
        present(sheetyColors, animated: true, completion: nil)
    }
    
    @IBAction func backgroundButtonClicked(_ sender: Any) {
        
        // Create a SheetyColors view with your configuration
        let config = SheetyColorsConfig(alphaEnabled: true, hapticFeedbackEnabled: true,initialColor: currentBackground, title: "Create a color", type: .rgb)
        let sheetyColors = SheetyColorsController(withConfig: config)

        // Add a button to accept the selected color
        let selectAction = UIAlertAction(title: "Select", style: .destructive) { [weak self] (_)  in
            self?.currentBackground = sheetyColors.color
            self?.drawQR()
        }
        sheetyColors.addAction(selectAction)

        // Add a cancel button
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        sheetyColors.addAction(cancelAction)

        // Now, present it to the user
        present(sheetyColors, animated: true, completion: nil)
        
    }
    
    @IBAction func logoSwitchChanged(_ sender: Any) {
        currentLogo = (sender as! UISwitch).isOn ? UIImage(named: "tap") : UIImage()
        drawQR()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        if #available(iOS 13.0, *) {
            if self.traitCollection.userInterfaceStyle == .dark {
                currentForeground = .white
            } else {
                currentForeground = .black
            }
            currentBackground = .clear
            drawQR()
        }
    }

}
