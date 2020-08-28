//
//  CustomTabBarController.swift
//  NoTextTabBarStoryboard
//
//  Created by MB on 08/09/2020.
//  Copyright © 2020 MB. All rights reserved.
//

import UIKit

class CustomTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewControllers = [
            createNavigationController(storyboardName: "First", imageName: "first", imageNameSelected: "first_selected"),
            createNavigationController(storyboardName: "Second", imageName: "second", imageNameSelected: "second_selected")
            ]
        
        UITabBar.appearance().tintColor = .black
    }
    
    private func createNavigationController(storyboardName: String, imageName: String, imageNameSelected: String) -> UINavigationController {
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: storyboardName.lowercased())
        
        let navController = UINavigationController(rootViewController: viewController)
        navController.setNavigationBarHidden(true, animated: false)
        navController.tabBarItem.image = UIImage(named: imageName)
        navController.tabBarItem.selectedImage = UIImage(named: imageNameSelected)
        navController.tabBarItem.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)
        
        return navController
    }
}
