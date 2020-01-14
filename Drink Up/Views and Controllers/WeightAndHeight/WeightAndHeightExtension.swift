//
//  WeightAndHeightExtension.swift
//  Drink Up
//
//  Created by  Alexander on 18.12.2019.
//  Copyright © 2019  Alexander. All rights reserved.
//

import Foundation
import UIKit

extension WeightViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    
    // MARK:- ViewController life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        weightPicker.delegate = self
        weightPicker.dataSource = self
        
        navigationItem.title = "Вес и рост"
    }
    
    // MARK:- DataSource & Delegate
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        if component == 0 {
            return weightArray.count
        } else {
            return heightArray.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return "\(weightArray[row])"
        } else {
            return "\(heightArray[row])"
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        if component == 0 {
            model.m = weightArray[row]
        } else {
            model.h = heightArray[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        
        if component == 0 {
            let label = UILabel()
            
            label.font = UIFont.systemFont(ofSize: 35)
            label.textColor = UIColor.systemOrange
            label.text = "\(weightArray[row]) кг"
            label.textAlignment = .center
            return label
        } else {
            let label = UILabel()
            
            label.font = UIFont.systemFont(ofSize: 35)
            label.textColor = UIColor.systemOrange
            label.text = "\(heightArray[row]) см"
            label.textAlignment = .center
            return label
        }
    }
}

