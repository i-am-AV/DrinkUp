//
//  ResultViewController.swift
//  Drink Up
//
//  Created by  Alexander on 11.12.2019.
//  Copyright © 2019  Alexander. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController, Storyboarded {
    
    weak var coordinator: MainCoordinator!
    @IBOutlet weak var resultLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Результат"
        resultLabel.text = "\(coordinator.model.result)‰"
    }
}
