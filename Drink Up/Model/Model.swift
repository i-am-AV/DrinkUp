//
//  Model.swift
//  Drink Up
//
//  Created by  Alexander on 11.12.2019.
//  Copyright © 2019  Alexander. All rights reserved.
//

import Foundation

struct Model {
    var s: Strenght! // крепость, %
    var a: Int = 0 // объем, мл
    var r: Sex! // коэф Видмарка
    var m: Int = 20 // масса тела, кг
    var h: Int = 120
    var k: Double { // коэф от роста, см
        if h < 140 {
            return 1
        } else if h < 160 {
            return 0.9
        } else if h < 180 {
            return 0.8
        } else {
            return 0.75
        }
    }
    
    var result: Double {
        let up = Double(a) * s!.rawValue * k
        let down = (Double(m) * r!.rawValue)
        
        return ((up / down) * 100).rounded() / 100
    }
}

enum Strenght: Double {
    case beer = 0.09
    case vodka = 0.4
    case wine = 0.12
}

enum Sex: Double {
    case man = 0.7
    case woman = 0.6
    case child = 0.3
}

