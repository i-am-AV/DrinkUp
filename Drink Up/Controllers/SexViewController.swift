//
//  SexViewController.swift
//  Drink Up
//
//  Created by  Alexander on 11.12.2019.
//  Copyright © 2019  Alexander. All rights reserved.
//

import UIKit

class SexViewController: UIViewController {
    
    var strenght = 0.0
    var bottlesCount = 0.0
    var sex = 0.0
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        let tag = sender.tag
        switch tag {
        case 1:
            sex = 0.7
        case 2:
            sex = 0.6
        case 3:
            sex = 0.3
        default: break
        }
    }
    
     // MARK: - Navigation
     
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
     guard let vc = segue.destination as? WeightViewController else { return }
        
        vc.strenght = strenght
        vc.bottlesCount = Double(bottlesCount)
        vc.sex = sex
    }
}
