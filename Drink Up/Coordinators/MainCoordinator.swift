//
//  MainCoordinator.swift
//  Drink Up
//
//  Created by  Alexander on 19.12.2019.
//  Copyright © 2019  Alexander. All rights reserved.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    var navigationController: UINavigationController
    var model = Model()
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = StrenghtViewController.instantiate(for: "Strenght")
        vc.coordinator = self
        navigationController.pushViewController(vc,
                                                animated: false)
    }
    
    func bottles() {
        let vc = BottlesViewController.instantiate(for: "Bottles")
        vc.coordinator = self
        navigationController.pushViewController(vc,
                                                animated: true)
    }
    
    func sex() {
        let vc = SexViewController.instantiate(for: "Sex")
        vc.coordinator = self
        navigationController.pushViewController(vc,
                                                animated: true)
    }
    
    func weightAndHeight() {
        let vc = WeightViewController.instantiate(for: "WeightAndHeight")
        vc.coordinator = self
        navigationController.pushViewController(vc,
                                                animated: true)
    }
    
    func result() {
        let vc = ResultViewController.instantiate(for: "Result")
        vc.coordinator = self
        navigationController.pushViewController(vc,
                                                animated: true)
    }
}
