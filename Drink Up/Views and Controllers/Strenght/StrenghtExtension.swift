//
//  StrenghtExtension.swift
//  Drink Up
//
//  Created by  Alexander on 18.12.2019.
//  Copyright © 2019  Alexander. All rights reserved.
//

import Foundation
import UIKit

extension StrenghtViewController {
    
    func push() {
        let storyboard = UIStoryboard(name: "Bottles",
                                             bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "ToBottlesVC") as? BottlesViewController
               vc?.model = model
        navigationController?.pushViewController(vc!,animated: true)
    }
    
    // MARK:- ViewController life cycle
    
    override func viewDidLoad() {
        navigationItem.title = "Напиток"
    }
}
