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
            firstScreen(),
            secondScreen()
        ]
        
        self.window = window
        self.tabBarController = tabBarController
    }
}

private func currentUser() -> User {
    return User(identifier: "u")
}

private func firstScreen() -> UIViewController {
    let vc = embedInNav(Dependencies.shared.chatModule.conversationsScreen())
    vc.tabBarItem.title = "Conversations"
    vc.tabBarItem.image = UIImage(named: "first")
    return vc
}

private func secondScreen() -> UIViewController {
    let vc = embedInNav(Dependencies.shared.userProfileModule.userProfileScreen(user: currentUser()))
    vc.tabBarItem.title = "My Profile"
    vc.tabBarItem.image = UIImage(named: "second")
    return vc
}

private func embedInNav(_ root: UIViewController) -> UINavigationController {
    return UINavigationController(rootViewController: root)
}
