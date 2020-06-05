//
//  teamPickConttoller.swift
//  conventorApp
//
//  Created by 林祐辰 on 2020/6/3.
//  Copyright © 2020 smirkiiiv. All rights reserved.
//

import UIKit
import Foundation


class TeamPickController:UIViewController,UIPickerViewDelegate,UIPickerViewDataSource{
    
   let membership = ["Bronze","Silver","Gold","Diamond","Ruby","Sapphire","Emerald"]
    
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int{
     return 1
     }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
            return membership.count
   }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) ->
        String?{
        
        return membership[row]
        
}
    
    
}
