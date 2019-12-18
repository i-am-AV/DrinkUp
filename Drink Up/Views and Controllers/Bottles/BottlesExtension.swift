//
//  BottlesExtension.swift
//  Drink Up
//
//  Created by  Alexander on 18.12.2019.
//  Copyright © 2019  Alexander. All rights reserved.
//

import Foundation
import UIKit

extension BottlesViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    
    func push() {
        let storyboard = UIStoryboard(name: "Sex",
                                      bundle: nil)
        
        let vc = storyboard.instantiateViewController(withIdentifier: "ToSexVC") as? SexViewController
        vc?.model = model
        print("\(vc!.model)")
        navigationController?.pushViewController(vc!,
                                                 animated: true)
        navigationItem.title = "Объем выпитого"
    }
    
    //MARK:- ViewController life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bottlesCountPicker.delegate = self
        bottlesCountPicker.dataSource = self
        navigationItem.title = "Объем выпитого"
    }
    
    //MARK:- DataSource & Delegate
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        rangeArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "\(rangeArray[row]) мл"
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        model.a = rangeArray[row]
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
