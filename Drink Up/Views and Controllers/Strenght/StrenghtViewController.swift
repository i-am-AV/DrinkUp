//
//  StrenghtViewController.swift
//  Drink Up
//
//  Created by  Alexander on 11.12.2019.
//  Copyright © 2019  Alexander. All rights reserved.
//

import UIKit

class StrenghtViewController: UIViewController {
    
    var model = Model()
    
    @IBAction func buttonPressed(_ sender: UIButton) {
                
        let tag = sender.tag
        switch tag {
        case 1:
            model.s = .beer
        case 2:
            model.s = .vodka
        case 3:
            model.s = .wine
        default: break
        }

       push()
    }
    
    @IBAction func home(_ segue: UIStoryboardSegue) {
        dismiss(animated: true)
    }
}

