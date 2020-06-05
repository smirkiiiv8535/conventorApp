//
//  moneyConventor.swift
//  conventorApp
//
//  Created by 林祐辰 on 2020/5/11.
//  Copyright © 2020 smirkiiiv. All rights reserved.
//

import UIKit


class moneyConventor: UIViewController ,UIPickerViewDelegate,UIPickerViewDataSource {
    
    let pickTeam = UIPickerView()


let seat = ["","Top Deck","Reserve","Club","Loge","Field","Baseline","Lexus Dugout"]
let ticketMoney = ["","27","43","60","76","92","112","128"]
let feeArray = ["","3","8","13","18","23","28","33"]
    
  @IBOutlet weak var chooseMembership: UITextField!
  @IBOutlet weak var ticketDollar: UILabel!
  @IBOutlet weak var fee: UILabel!
  @IBOutlet weak var memberYear: UITextField!
  @IBOutlet weak var totalCost: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       let tapScreen = UITapGestureRecognizer(target: self, action: #selector(keyboardFold))
        view.addGestureRecognizer(tapScreen)
        
 navigationController?.isNavigationBarHidden = false
 navigationController?.navigationBar.barTintColor = UIColor(displayP3Red:184/255,green:72/255,blue:109/255, alpha: 1)
 navigationController?.navigationBar.tintColor = UIColor.white
    
        pickTeam.delegate = self
        pickTeam.dataSource = self
        renderData()
    }

    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return seat.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return seat[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        chooseMembership.text = "\(seat[row])"
        seatToFee()
    }
    
    
    func renderData(){
        
        let addToolbar = UIToolbar()
        addToolbar.sizeToFit()
        
        let toolBarButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(keyboardFold))
        
        addToolbar.setItems([toolBarButton], animated: true)
        
        chooseMembership.inputAccessoryView = addToolbar
        chooseMembership.inputView = pickTeam
    }
    
    
    @objc func keyboardFold (){
          self.view.endEditing(true)
      }
    
    
    func seatToFee(){
        switch chooseMembership.text {
        case "Top Deck":
           ticketDollar.text = "\(ticketMoney[1])"
           fee.text = feeArray[1]
        case "Reserve":
           ticketDollar.text = "\(ticketMoney[2])"
           fee.text = feeArray[2]
        case "Club":
           ticketDollar.text = "\(ticketMoney[3])"
           fee.text = feeArray[3]
        case "Loge" :
           ticketDollar.text = "\(ticketMoney[4])"
           fee.text = feeArray[4]
        case "Field":
           ticketDollar.text = "\(ticketMoney[5])"
           fee.text = feeArray[5]
        case "Baseline":
           ticketDollar.text = "\(ticketMoney[6])"
           fee.text = feeArray[6]
        case "Lexus Dugout":
           ticketDollar.text = "\(ticketMoney[7])"
           fee.text = feeArray[7]
        default:
            fee.text = "0"
        }
    }
    
    @IBAction func calculateCost(_ sender: UIButton) {
        
  if(ticketDollar.text != "" && fee.text != "" && memberYear.text != ""){
         totalCost.isHidden = false
         totalCost.text = String(format: "%.2f",Double(ticketDollar.text!)! * (1+Double(fee.text!)! / 100) * (1-Double(memberYear.text!)! / 100))
    }else{
         popAlert()
       }
    }
    
    func popAlert(){
        let alertController = UIAlertController(title: "Error", message: "Please Choose Alternative Plan", preferredStyle: .alert)
        let alertButton = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(alertButton)
        present(alertController, animated: true, completion: nil)
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
