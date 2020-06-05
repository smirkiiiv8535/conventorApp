//
//  timeConventor.swift
//  conventorApp
//
//  Created by 林祐辰 on 2020/5/11.
//  Copyright © 2020 smirkiiiv. All rights reserved.
//
import UIKit

class timeConventor: UIViewController {
    let dateFormatter = DateFormatter()
    
    @IBOutlet weak var timeButton: UIButton!
    @IBOutlet weak var pacificTime: UIButton!
    @IBOutlet weak var mountainTime: UIButton!
    @IBOutlet weak var centeralTime: UIButton!
    @IBOutlet weak var easternTime: UIButton!
    
    @IBOutlet weak var defaultPickTime: UILabel!
    @IBOutlet weak var selectDate: UIDatePicker!
    @IBOutlet weak var selectDateBoard: UIView!
    
override func viewDidLoad() {
    super.viewDidLoad()
    navigationController?.isNavigationBarHidden = false
    navigationController?.navigationBar.barTintColor = UIColor.init(displayP3Red: 229/255, green: 124/255, blue: 40/255, alpha: 1)
    navigationController?.navigationBar.tintColor = UIColor.white
        nowTime()
    }
    
    func nowTime(){
      
        dateFormatter.dateFormat = "MMM d, h:mm a"
        
        let now = Date()
        let nowString = dateFormatter.string(from: now)
        timeButton.setTitle(nowString, for: UIControl.State.normal)
        
        let PCTTime = now+3600 * -15
        let PCTString = dateFormatter.string(from: PCTTime)
        pacificTime.setTitle(PCTString, for: UIControl.State.normal)
        
        let MTTime = now+3600 * -14
        let MTString = dateFormatter.string(from: MTTime)
        mountainTime.setTitle(MTString, for: UIControl.State.normal)
    
        let CTTime = now+3600 * -13
        let CTString = dateFormatter.string(from: CTTime)
        centeralTime.setTitle(CTString, for: UIControl.State.normal)
  
        let ESTTime = now+3600 * -12
        let ESTString = dateFormatter.string(from: ESTTime)
         easternTime.setTitle(ESTString, for: UIControl.State.normal)
   }
    
    func updateUTC8Time(){
    
            dateFormatter.dateFormat = "MMM d, h:mm a"
        
            let selectedDate = selectDate.date
            let UTF8String = dateFormatter.string(from: selectedDate)
            timeButton.setTitle(UTF8String, for: UIControl.State.normal)
                            
            let PCTTime = selectedDate+3600 * -15
            let PCTString = dateFormatter.string(from: PCTTime)
            pacificTime.setTitle(PCTString, for: UIControl.State.normal)
                  
            let MTTime = selectedDate+3600 * -14
            let MTString = dateFormatter.string(from: MTTime)
            mountainTime.setTitle(MTString, for: UIControl.State.normal)
              
            let CTTime = selectedDate+3600 * -13
            let CTString = dateFormatter.string(from: CTTime)
            centeralTime.setTitle(CTString, for: UIControl.State.normal)
            
            let ESTTime = selectedDate+3600 * -12
            let ESTString = dateFormatter.string(from: ESTTime)
           easternTime.setTitle(ESTString, for: UIControl.State.normal)
    }

    func updatePacificTime(){
        
            dateFormatter.dateFormat = "MMM d, h:mm a"
           
            let PCTTime = selectDate.date
            let PCTString = dateFormatter.string(from: PCTTime)
            pacificTime.setTitle(PCTString, for: UIControl.State.normal)
        
           let UTF8Time = PCTTime+3600 * 15
           let UTF8String = dateFormatter.string(from: UTF8Time)
           timeButton.setTitle(UTF8String, for: UIControl.State.normal)

            let MTTime = PCTTime+3600 * 1
            let MTString = dateFormatter.string(from: MTTime)
            mountainTime.setTitle(MTString, for: UIControl.State.normal)

            let CTTime = PCTTime+3600 * 2
            let CTString = dateFormatter.string(from: CTTime)
            centeralTime.setTitle(CTString, for: UIControl.State.normal)

            let ESTTime = PCTTime+3600 * 3
            let ESTString = dateFormatter.string(from: ESTTime)
           easternTime.setTitle(ESTString, for: UIControl.State.normal)
    }
    
    func updateMountainTime(){
        
            dateFormatter.dateFormat = "MMM d, h:mm a"
              
           let MTTime = selectDate.date
           let MTString = dateFormatter.string(from: MTTime)
           mountainTime.setTitle(MTString, for: UIControl.State.normal)
        
            let UTF8Time = MTTime+3600 * 14
            let UTF8String = dateFormatter.string(from: UTF8Time)
            timeButton.setTitle(UTF8String, for: UIControl.State.normal)
                            
            let PCTTime = MTTime+3600 * -1
            let PCTString = dateFormatter.string(from: PCTTime)
            pacificTime.setTitle(PCTString, for: UIControl.State.normal)
              
            let CTTime = MTTime+3600 * 1
            let CTString = dateFormatter.string(from: CTTime)
            centeralTime.setTitle(CTString, for: UIControl.State.normal)
            
            let ESTTime = MTTime+3600 * 2
            let ESTString = dateFormatter.string(from: ESTTime)
           easternTime.setTitle(ESTString, for: UIControl.State.normal)
    }
    
    func updateCenteralTime(){
        
            dateFormatter.dateFormat = "MMM d, h:mm a"
        
            let CTTime = selectDate.date
            let CTString = dateFormatter.string(from: CTTime)
            centeralTime.setTitle(CTString, for: UIControl.State.normal)
              
            let UTF8Time = CTTime+3600 * 13
            let UTF8String = dateFormatter.string(from: UTF8Time)
            timeButton.setTitle(UTF8String, for: UIControl.State.normal)
                            
            let PCTTime = CTTime+3600 * -2
            let PCTString = dateFormatter.string(from: PCTTime)
            pacificTime.setTitle(PCTString, for: UIControl.State.normal)
                  
            let MTTime = CTTime+3600 * -1
            let MTString = dateFormatter.string(from: MTTime)
            mountainTime.setTitle(MTString, for: UIControl.State.normal)
            
            let ESTTime = CTTime+3600 * 1
            let ESTString = dateFormatter.string(from: ESTTime)
           easternTime.setTitle(ESTString, for: UIControl.State.normal)
    }
    
    func updateEasternTime(){
    
            dateFormatter.dateFormat = "MMM d, h:mm a"
        
            let ESTTime = selectDate.date
            let ESTString = dateFormatter.string(from: ESTTime)
             easternTime.setTitle(ESTString, for: UIControl.State.normal)
              
            let UTF8Time = ESTTime+3600 * 12
            let UTF8String = dateFormatter.string(from: UTF8Time)
            timeButton.setTitle(UTF8String, for: UIControl.State.normal)
                            
            let PCTTime = ESTTime+3600 * -3
            let PCTString = dateFormatter.string(from: PCTTime)
            pacificTime.setTitle(PCTString, for: UIControl.State.normal)
                  
            let MTTime = ESTTime+3600 * -2
            let MTString = dateFormatter.string(from: MTTime)
            mountainTime.setTitle(MTString, for: UIControl.State.normal)
              
            let CTTime = ESTTime+3600 * -1
            let CTString = dateFormatter.string(from: CTTime)
            centeralTime.setTitle(CTString, for: UIControl.State.normal)
    }
    
    @IBAction func pickDate(_ sender: UIButton) {
        selectDateBoard.isHidden = false
        defaultPickTime.text = "UTC +8"
    }
    
    @IBAction func pickPacificDate(_ sender: UIButton) {
        selectDateBoard.isHidden = false
        defaultPickTime.text = "Pacific Time"
    }
   
    @IBAction func pickMountainTime(_ sender: UIButton) {
        selectDateBoard.isHidden = false
        defaultPickTime.text = "Mountain Time"
    }
    
    @IBAction func pickCentralTime(_ sender: UIButton) {
        selectDateBoard.isHidden = false
        defaultPickTime.text = "Centeral Time"
    }
    
    @IBAction func pickEasternTime(_ sender: UIButton) {
        selectDateBoard.isHidden = false
        defaultPickTime.text = "Eastern Time"
    }
    
    @IBAction func getSelectedTime(_ sender: UIButton) {
        selectDateBoard.isHidden = true
        switch (defaultPickTime.text){
        case "UTC +8":
            updateUTC8Time()
        case "Pacific Time":
            updatePacificTime()
        case "Mountain Time":
            updateMountainTime()
        case "Centeral Time" :
            updateCenteralTime()
        case "Eastern Time" :
            updateEasternTime()
        default:
             updateUTC8Time()
        }
    }
}
