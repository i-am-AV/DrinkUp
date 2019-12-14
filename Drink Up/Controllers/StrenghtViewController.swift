//
//  StrenghtViewController.swift
//  Drink Up
//
//  Created by  Alexander on 11.12.2019.
//  Copyright © 2019  Alexander. All rights reserved.
//

import UIKit

class StrenghtViewController: UIViewController {

    private var strenght = 0.0
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        let tag = sender.tag
        switch tag {
        case 1:
            strenght = 0.09
        case 2:
            strenght = 0.4
        case 3:
            strenght = 0.12
        default: break
        }
    }
    
    @IBAction func home(_ segue: UIStoryboardSegue) {
        
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        guard let vc = segue.destination as? BottlesViewController else { return }
    
        vc.strenght = strenght
    }
}

