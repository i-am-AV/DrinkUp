//
//  Coordinator.swift
//  Drink Up
//
//  Created by  Alexander on 18.12.2019.
//  Copyright © 2019  Alexander. All rights reserved.
//

import Foundation
import UIKit

protocol Coordinator {

    var navigationController: UINavigationController { get set }
    
    func start()
}




