//
//  speedChange.swift
//  conventorApp
//
//  Created by 林祐辰 on 2020/6/2.
//  Copyright © 2020 smirkiiiv. All rights reserved.
//

import Foundation

let mphTokm: Double = 1.609344
let kmTomph: Double = 0.61371


class SpeedChange{
    
    func mphToKm(mph:Double)->Double{
        return mph*mphTokm
    }
    
    func kmToMph(km:Double)->Double{
        return km*kmTomph
    }

    
    
}
