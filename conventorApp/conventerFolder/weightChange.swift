//
//  weightChange.swift
//  conventorApp
//
//  Created by 林祐辰 on 2020/6/4.
//  Copyright © 2020 smirkiiiv. All rights reserved.
//

import Foundation

let pdsTokg: Double = 0.45
let kgTopds: Double = 2.1875

class WeightChange{
    func poundStoKG(pounds:Double)->Double{
        return pounds * pdsTokg
    }
    
    func kgToPounds(kgs:Double)->Double{
        return kgs * kgTopds
    }
    
    
}
