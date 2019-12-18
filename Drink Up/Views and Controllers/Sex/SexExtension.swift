//
//  SexExtension.swift
//  Drink Up
//
//  Created by  Alexander on 18.12.2019.
//  Copyright © 2019  Alexander. All rights reserved.
//

import Foundation
import UIKit

extension SexViewController {
    
    func push() {
       let storyboard = UIStoryboard(name: "WeightAndHeight",
                                     bundle: nil)
       
       let vc = storyboard.instantiateViewController(withIdentifier: "ToWeightVC") as? WeightViewController
       vc?.model = model
       print("\(vc!.model)")
       navigationController?.pushViewController(vc!,
                                                animated: true)
       navigationItem.title = "Пол"
      }
    
    // MARK:- ViewController life cycle
    
    override func viewDidLoad() {
        navigationItem.title = "Пол"
    }
}
