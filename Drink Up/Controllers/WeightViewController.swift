//
//  WeightViewController.swift
//  Drink Up
//
//  Created by  Alexander on 11.12.2019.
//  Copyright © 2019  Alexander. All rights reserved.
//

import UIKit

class WeightViewController: UIViewController {
    
    @IBOutlet weak var weightPicker: UIPickerView!
    var strenght = 0.0
    var bottlesCount = 0.0
    var sex = 0.0
    var weight = 20.0
    var height = 120.0
    private let weightArray = Array(20...200)
    private let heightArray = Array(120...230)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        weightPicker.delegate = self
        weightPicker.dataSource = self
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let result = segue.destination as? ResultViewController else { return }
        
        result.strenght = strenght
        result.bottlesCount = Double(bottlesCount)
        result.sex = sex
        result.weight = weight
        result.k = k(height)
    }
}

func k(_ height: Double) -> Double {
    switch height {
    case 120..<140:
        return 1
    case 140..<160:
        return 0.9
    case 160..<180:
        return 0.8
    case 180...:
        return 0.75
    default:
        return 0
    }
}

    // MARK: - Extension

extension WeightViewController: UIPickerViewDelegate, UIPickerViewDataSource {
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
             weight = Double(weightArray[row])
        } else {
            height = Double(heightArray[row])
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        
        
        if component == 0 {
            let label = UILabel()
            
            label.font = UIFont.systemFont(ofSize: 35)
            label.textColor = UIColor.systemOrange
            label.text = "\(weightArray[row])кг"
            label.textAlignment = .center
            return label
        } else {
            let label = UILabel()
            
            label.font = UIFont.systemFont(ofSize: 35)
            label.textColor = UIColor.systemOrange
            label.text = "\(heightArray[row])см"
            label.textAlignment = .center
            return label
        }
    }
}
