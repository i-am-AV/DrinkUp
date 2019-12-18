//
//  SexViewController.swift
//  Drink Up
//
//  Created by  Alexander on 11.12.2019.
//  Copyright © 2019  Alexander. All rights reserved.
//

import UIKit

class SexViewController: UIViewController {
    
    var model = Model()
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        let tag = sender.tag
        switch tag {
        case 1:
            model.r = .man
        case 2:
            model.r = .woman
        case 3:
            model.r = .child
        default: break
        }
        
        push()
    }
}
