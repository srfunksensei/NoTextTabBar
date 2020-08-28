//
//  AppDelegate.swift
//  NoTextTabBarStoryboard
//
//  Created by MB on 28/08/2020.
//  Copyright © 2020 MB. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window?.rootViewController = CustomTabBarController()
        window?.backgroundColor = .white
        
        return true
    }

}

