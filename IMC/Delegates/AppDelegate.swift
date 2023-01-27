//
//  AppDelegate.swift
//  IMC
//
//  Created by unicred on 06/12/22.
//

import UIKit

let defString = String(stringLiteral: "")
let defFloat = Float(floatLiteral: 0)

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.backgroundColor = .white
        window?.rootViewController = UINavigationController(rootViewController: HomeViewController())
        
        return true
    }
}
