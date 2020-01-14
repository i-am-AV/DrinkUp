//
//  BottlesViewController.swift
//  Drink Up
//
//  Created by  Alexander on 11.12.2019.
//  Copyright © 2019  Alexander. All rights reserved.
//

import UIKit

class BottlesViewController: UIViewController, Storyboarded {
    
    var model = Model()
    weak var coordinator: MainCoordinator!
    
    @IBOutlet weak var bottlesCountPicker: UIPickerView!
    let rangeArray = (0...100).map { $0 * 100 }
    
    @IBAction func buttonPressed() {
        coordinator.model.a = model.a
        coordinator.sex()
    }  
}
