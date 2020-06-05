//
//  heightChange.swift
//  conventorApp
//
//  Created by 林祐辰 on 2020/6/4.
//  Copyright © 2020 smirkiiiv. All rights reserved.
//

import Foundation


let metreToFoot: Double = 3.2808
let footToMetre: Double = 0.3048

class HeightChange{
    func meterToFoot(meter:Double)->Double{
        return meter * metreToFoot
    }
    
    func footToMeter(foot:Double)->Double{
        return foot * footToMetre
    }
    
    
}
