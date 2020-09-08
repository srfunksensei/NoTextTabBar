//
//  AppDelegate.swift
//  NoTextTabBarStoryboardProgrammatic
//
//  Created by MB on 08/09/2020.
//  Copyright © 2020 MB. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        window?.rootViewController = CustomTabBarController()
        window?.backgroundColor = .white
        
        return true
    }
}

