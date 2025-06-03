//
//  AppDelegate.swift
//  Banksy
//
//  Created by Mark Alford on 6/2/25.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    // Update this file for no storyboards only
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.backgroundColor = .systemGreen
        window?.rootViewController = LoginViewController()
        
        return true
    }

}

