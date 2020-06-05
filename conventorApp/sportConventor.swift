//
//  sportConventor.swift
//  conventorApp
//
//  Created by 林祐辰 on 2020/6/2.
//  Copyright © 2020 smirkiiiv. All rights reserved.
//
import UIKit

class sportConventor: UIViewController {
    
    let speedConventer = SpeedChange()
    let weightConventer = WeightChange()
    let heightconventer = HeightChange()
    
    
    @IBOutlet weak var mphTextField: UITextField!
    @IBOutlet weak var kmTextField: UITextField!
    @IBOutlet weak var kgTextField: UITextField!
    @IBOutlet weak var poundsTextField: UITextField!
    @IBOutlet weak var meterTextField: UITextField!
    @IBOutlet weak var footTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.barTintColor = UIColor.init(displayP3Red: 153/255, green: 37/255, blue: 156/255, alpha: 1)
         navigationController?.navigationBar.tintColor = UIColor.white
    }
    
    @IBAction func changeMph(_ sender: UITextField) {
        
        let passInValue = sender.text!
        
        if(!passInValue.isEmpty){
            let willFixedMph = Double(passInValue)
            let convertKMValue = speedConventer.mphToKm(mph: willFixedMph!)
            kmTextField.text = String(format: "%.2f", convertKMValue)
            
        }else{
            mphTextField.text = ""
            kmTextField.text = ""
        }
        

    }
    
    @IBAction func changeKm(_ sender: UITextField) {
        let passInValue = sender.text!
        
        if(!passInValue.isEmpty){
            let willFixedKm = Double(passInValue)
            let convertMphValue = speedConventer.kmToMph(km: willFixedKm!)
            mphTextField.text = String(format:"%.2f",convertMphValue)
        }else{
            mphTextField.text = ""
            kmTextField.text = ""
        }
        
        
    }
    
    @IBAction func changePounds(_ sender: UITextField) {
        let passInValue = sender.text!
        
        if(!passInValue.isEmpty){
          let willFixedKilogram = Double(passInValue)
          let convertPoundValue = weightConventer.kgToPounds(kgs: willFixedKilogram!)
            poundsTextField.text = String(format:"%.2f",convertPoundValue)
        }else{
            kgTextField.text=""
            poundsTextField.text=""
        }
    }
    
    @IBAction func changeKilogram(_ sender: UITextField) {
         let passInValue = sender.text!
        
        if(!passInValue.isEmpty){
             let willFixedPound = Double(passInValue)
             let convertKilogramValue = weightConventer.poundStoKG(pounds: willFixedPound!)
            kgTextField.text = String(format:"%.2f",convertKilogramValue)
           }else{
              kgTextField.text=""
              poundsTextField.text=""
           }
    }
    
    
    @IBAction func changeToFeet(_ sender: UITextField) {
        let passInValue = sender.text!
        
        if(!passInValue.isEmpty){
            let willFixedMeter = Double(passInValue)
            let convertedFeet = heightconventer.meterToFoot(meter: willFixedMeter!)
            footTextField.text = String(format:"%.1f",convertedFeet)
            
        }else{
           meterTextField.text=""
          footTextField.text=""
        }
    }
    
    
    @IBAction func changeToMeter(_ sender: UITextField) {
        let passInValue = sender.text!
         
         if(!passInValue.isEmpty){
             let willFixedFeet = Double(passInValue)
             let convertedMeter = heightconventer.footToMeter(foot: willFixedFeet!)
             meterTextField.text = String(format:"%.2f",convertedMeter)
             
         }else{
              meterTextField.text=""
              footTextField.text=""
         }
    }

}
