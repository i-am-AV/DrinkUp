//
//  ResultViewController.swift
//  Drink Up
//
//  Created by  Alexander on 11.12.2019.
//  Copyright © 2019  Alexander. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    
    var strenght = 0.0
    var bottlesCount = 0.0
    var sex = 0.0
    var weight = 0.0
    var k = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Крепость \(strenght)")
        print("Кол-во бутылок \(bottlesCount)")
        print("Пол \(sex)")
        print("Масса \(weight)")
        print("Коэф от роста\(k)")
        
        resultLabel.text = calc().intox + "\n" + calc().mile + "‰"
    }
    
    
    func calc() -> (intox: String, mile: String) {
        let result = strenght * bottlesCount * k / (sex * weight)
        let output = result == floor(result) ? "\(Int(result))" : String(format: "%.2f", result)
        
        switch result {
        case 0...0.5:
            return (intox: "Отсутсвие влияния алкоголя",
                    mile: output)
        case 0.6..<1.5:
            return (intox: "Легкая степень опьянения",
                    mile: output)
        case 1.5...2:
            return (intox: "Средняя степень опьянения",
                    mile: output)
        case 2...3:
            return (intox: "Сильная степень опьянения",
                    mile: output)
        case 3...5:
            return (intox: "Тяжелое отравление",
                    mile: output)
        case 5...:
            return (intox: "Смертельное отравление",
                    mile: output)
        default:
            return ((intox: "",
            mile: ""))
        }
    }
}
