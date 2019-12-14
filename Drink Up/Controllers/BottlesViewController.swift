//
//  BottlesViewController.swift
//  Drink Up
//
//  Created by  Alexander on 11.12.2019.
//  Copyright © 2019  Alexander. All rights reserved.
//

import UIKit

class BottlesViewController: UIViewController {
 
    @IBOutlet weak var bottlesCountPicker: UIPickerView!
    private let rangeArray = [0, 0.5, 1, 1.5] + Array(2...100)
    private var bottlesCount = 0.0
    var strenght = 0.0
  
    override func viewDidLoad() {
        super.viewDidLoad()

        bottlesCountPicker.delegate = self
        bottlesCountPicker.dataSource = self
    }
 
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let vc = segue.destination as? SexViewController else { return }
        
        switch strenght {
        case 0.5:
            bottlesCount *= 500
        case 0.4:
        bottlesCount *= 700
        case 0.12:
            bottlesCount *= 700
        default:
            break
        }
        vc.strenght = strenght
        vc.bottlesCount = Double(bottlesCount)
        
    }
}

    // MARK: - Extension
extension BottlesViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        rangeArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "\(rangeArray[row])"
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        bottlesCount = Double(rangeArray[row])
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let label = UILabel()
        
        label.font = UIFont.systemFont(ofSize: 35)
        label.textColor = UIColor.systemOrange
        label.text = "\(rangeArray[row])"
        label.textAlignment = .center
        
        return label
    }
}
