//
//  WeightViewController.swift
//  Drink Up
//
//  Created by  Alexander on 11.12.2019.
//  Copyright © 2019  Alexander. All rights reserved.
//

import UIKit

class WeightViewController: UIViewController, Storyboarded {
    
    var model = Model()
    weak var coordinator: MainCoordinator!
    
    @IBOutlet weak var weightPicker: UIPickerView!
    let weightArray = Array(20...200)
    let heightArray = Array(120...230)
    
    @IBAction func buttonPressed() {
        coordinator.model.m = model.m
        coordinator.model.h = model.h
        coordinator.result()
    }
}
