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
        
        if indexPath.section == 0 {
            let data = textualQRdataSource[indexPath.section][indexPath.row]
            // URL/Text qr codes
            let inputTitle:String = (data["code"] == "url") ? "Enter a url" : "Enter a text"
            let keyBoardType:UIKeyboardType = (data["code"] == "url") ? .URL : .default
            let inputMessage:String = "Whatever you write here will be encoded as a QR Code ;)"
            alertTextQR(with: inputTitle, message: inputMessage,keyboardType: keyBoardType, Emvco: false,selectedIndexPath: indexPath)
        }else if indexPath.section == 1 {
            let key:String = Array(emvcoQRdataSource.keys)[indexPath.row]
            var keyBoardType:UIKeyboardType = .default
            if let _:Float = emvcoQRdataSource[key] as? Float {
                keyBoardType = .decimalPad
            }
            
            let inputTitle:String = "New value for \(key)"
            let inputMessage:String = "Current value \(emvcoQRdataSource[key])"
            alertTextQR(with: inputTitle, message: inputMessage,keyboardType: keyBoardType, Emvco: true,key: key,selectedIndexPath: indexPath)
        }else if indexPath.section == 2 {
            let keyBoardType:UIKeyboardType = .default
            let inputTitle:String = "New value for \(self.emvcoQRPaymentTagsSource[indexPath.row]["tag"])"
            let inputMessage:String = "Current value \(self.emvcoQRPaymentTagsSource[indexPath.row]["value"])"
            alertTextQR(with: inputTitle, message: inputMessage,keyboardType: keyBoardType, Emvco: true,selectedIndexPath: indexPath)
        }
    }
    
    
    
    func alertTextQR(with title:String, message:String,keyboardType:UIKeyboardType = .default,Emvco:Bool,key:String? = nil,selectedIndexPath:IndexPath)
    {
        // cretea alert control with given title and message
        let ac = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        // Define the keyboard
        ac.addTextField { (textField) in
            textField.keyboardType = keyboardType
        }
        
        // Define what to do when the user fills in the value
        let submitAction = UIAlertAction(title: "Submit", style: .default) { [unowned ac, weak self] _ in
            let answer = ac.textFields![0]
            // do something interesting with "answer" here\
// Check if it is a URL/Text code, then we show the code with the inputted url/text
            if !Emvco {
                self?.showQR(for: answer.text ?? "")
            }else {
                // if it is emvco data field, we need to update the current field to the new one and reload the table
                var tempDict:[String:Any] = self?.emvcoQRdataSource ?? [:]
                
                // Add the new data
                if selectedIndexPath.section == 1 {
                    tempDict[key!] = answer.text ?? ""
                    tempDict["paymentNetworks"] = self?.emvcoQRPaymentTagsSource
                }else if selectedIndexPath.section == 2 {
                    var tempTagsDict:[[String:String]]? = self?.emvcoQRPaymentTagsSource
                    tempTagsDict?[selectedIndexPath.row]["value"] = answer.text ?? ""
                    tempDict["paymentNetworks"] = tempTagsDict
                }
                
                // Validate the new data
                do {
                    _ = try TapEmvcoPushData.init(withDictionary: tempDict)
                    self?.emvcoQRdataSource = tempDict
                    self?.emvcoQRPaymentTagsSource = tempDict["paymentNetworks"] as! [[String : String]]
                    self?.emvcoQRdataSource.removeValue(forKey: "paymentNetworks")
                    self?.qrSettingsTableView.reloadData()
                }catch{
                    self?.showError(with: error)
                }
            }
        }
        // The submit action
        ac.addAction(submitAction)
        // The cancel action
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { [unowned ac] _ in
            ac.dismiss(animated: true, completion: nil)
        }
        ac.addAction(cancelAction)
        present(ac, animated: true)
    }
    
    
    func showError(with error:Error)
    {
        // cretea alert control with given title and message
        let ac = UIAlertController(title: "Malformed Data", message: error.localizedDescription, preferredStyle: .alert)
        // The cancel action
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { [unowned ac] _ in
            ac.dismiss(animated: true, completion: nil)
        }
        ac.addAction(cancelAction)
        present(ac, animated: true)
    }
    
    func showQR(for content:String)
    {
        let qrImageView:QRImageViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "QRImageViewController") as! QRImageViewController
        qrImageView.tapQrCodeContent = TapQrCodeContent(withText: content)
        self.navigationController?.pushViewController(qrImageView, animated: true)
    }
}
