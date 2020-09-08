//
//  CustomTabBarController.swift
//  NoTextTabBarStoryboardProgrammatic
//
//  Created by MB on 08/09/2020.
//  Copyright © 2020 MB. All rights reserved.
//

import UIKit

class CustomTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewControllers = [
            createNavigationController(imageName: "first"),
            createNavigationController(imageName: "second")
        ]
    }
    
    private func createNavigationController(imageName: String) -> UINavigationController {
        let viewController = UIViewController()
        let navController = UINavigationController(rootViewController: viewController)
        navController.tabBarItem.image = UIImage(named: imageName)
        navController.tabBarItem.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)
        navController.tabBarItem.title = nil
        return navController
    }
}
