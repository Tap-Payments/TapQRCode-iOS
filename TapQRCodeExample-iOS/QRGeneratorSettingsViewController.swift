//
//  QRGeneratorSettingsViewController.swift
//  TapQRCodeExample-iOS
//
//  Created by Osama Rabie on 16/03/2020.
//  Copyright © 2020 Tap Payments. All rights reserved.
//

import UIKit
import TapQRCode_iOS

class QRGeneratorSettingsViewController: UIViewController {

    @IBOutlet weak var qrSettingsTableView: UITableView!
    var textualQRdataSource:[[[String:String]]] = []
    var emvcoQRdataSource:[String:Any] = [:]
    var emvcoQRPaymentTagsSource:[[String:String]] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        textualQRdataSource.append([["title":"URL QR Code","value":"http://tap.company","type":"text","code":"url"],["title":"Text QR Code","value":"Tap QR Code Kit 2020","type":"text","code":"text"]])
        
        
        let url = Bundle.main.url(forResource: "EmvcoJson", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        emvcoQRdataSource = try! JSONSerialization.jsonObject(with: data, options:.allowFragments) as! [String : Any]
        emvcoQRPaymentTagsSource = emvcoQRdataSource["paymentNetworks"] as! [[String : String]]
        emvcoQRdataSource.removeValue(forKey: "paymentNetworks")
        
        qrSettingsTableView.dataSource = self
        qrSettingsTableView.delegate = self
        
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


extension QRGeneratorSettingsViewController:UITableViewDataSource
{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Textual Based QR Codes"
        }else if section == 1 {
            return "EMVCO QR Codes Transaction Data"
        }else if section == 2 {
            return "EMVCO QR Codes Merchant Tags"
        }else {
            return ""
        }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return textualQRdataSource[section].count
        }else if section == 1 {
            return emvcoQRdataSource.count
        }else {
            return emvcoQRPaymentTagsSource.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "QRSettingsCell", for: indexPath)
        
        if indexPath.section == 0 {
            cell.textLabel?.text = textualQRdataSource[indexPath.section][indexPath.row]["title"]
            cell.detailTextLabel?.text = textualQRdataSource[indexPath.section][indexPath.row]["value"]
        }else if indexPath.section == 1 {
            let key:String = Array(emvcoQRdataSource.keys)[indexPath.row]
            cell.textLabel?.text = key
            // for float values
            if let floatValue:Float = emvcoQRdataSource[key] as? Float {
                cell.detailTextLabel?.text = String(floatValue)
            }else if let stringValue:String = emvcoQRdataSource[key] as? String {// For string vales
                cell.detailTextLabel?.text = stringValue
            }
        }else if indexPath.section == 2 {
            let paymentTag:[String:String] = emvcoQRPaymentTagsSource[indexPath.row]
            cell.textLabel?.text = paymentTag["tag"]
            cell.detailTextLabel?.text = paymentTag["value"]
        }
        
        return cell
    }
    
    
}


extension QRGeneratorSettingsViewController:UITableViewDelegate
{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let data = textualQRdataSource[indexPath.section][indexPath.row]
        if indexPath.section == 0 {
            // URL/Text qr codes
            let inputTitle:String = (data["code"] == "url") ? "Enter a url" : "Enter a text"
            let inputMessage:String = "Whatever you write here will be encoded as a QR Code ;)"
            let ac = UIAlertController(title: inputTitle, message: inputMessage, preferredStyle: .alert)
            ac.addTextField()

            let submitAction = UIAlertAction(title: "Submit", style: .default) { [unowned ac, weak self] _ in
                let answer = ac.textFields![0]
                // do something interesting with "answer" here\

                let qrImageView:QRImageViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "QRImageViewController") as! QRImageViewController
                qrImageView.tapQrCodeContent = TapQrCodeContent(withText: answer.text ?? "")
                self?.navigationController?.pushViewController(qrImageView, animated: true)
            }
            
            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { [unowned ac] _ in
                ac.dismiss(animated: true, completion: nil)
            }

            ac.addAction(submitAction)
            ac.addAction(cancelAction)
            present(ac, animated: true)
        }
    }
}
