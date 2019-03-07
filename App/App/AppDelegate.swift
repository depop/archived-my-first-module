//
//  AppDelegate.swift
//  App
//
//  Created by Nebil Kriedi on 07/03/2019.
//  Copyright © 2019 Depop. All rights reserved.
//

import UIKit
import Dependencies
import Service

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var tabBarController: UITabBarController?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        setUpDependencies()
        installMainScreen()
        return true
    }

    private func installMainScreen() {
        let window = UIWindow(frame: UIScreen.main.bounds)
        let tabBarController = UITabBarController(nibName: nil, bundle: nil)
        window.rootViewController = tabBarController
        window.makeKeyAndVisible()
        
        tabBarController.viewControllers = [
            Dependencies.shared.chatModule.conversationsScreen(),
            Dependencies.shared.userProfileModule.userProfileScreen(user: currentUser())
        ]
        
        self.window = window
        self.tabBarController = tabBarController
    }
}

private func currentUser() -> User {
    return User(identifier: "u")
}
