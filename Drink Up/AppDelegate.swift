//
//  AppDelegate.swift
//  Drink Up
//
//  Created by  Alexander on 11.12.2019.
//  Copyright © 2019  Alexander. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var coordinator: MainCoordinator?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
       
        let navigationController = UINavigationController()
        let navigationBar = navigationController.navigationBar

        navigationBar.prefersLargeTitles = true
        navigationBar.tintColor = .systemOrange
        navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.systemOrange]
        
        coordinator = MainCoordinator(navigationController: navigationController)
        coordinator!.start()
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
       
        return true
    }
}
