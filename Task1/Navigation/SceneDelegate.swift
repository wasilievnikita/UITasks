//
//  SceneDelegate.swift
//  Navigation
//
//  Created by Никита Васильев on 06.04.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }

        let window = UIWindow(windowScene: windowScene)
        
        let profileViewController = ProfileViewController()
        let feedViewController = FeedViewController()
        
        let profileNavViewController = UINavigationController(rootViewController: profileViewController)
        let feedNavViewController = UINavigationController(rootViewController: feedViewController)
        
        profileNavViewController.tabBarItem.title = "Профиль"
        profileNavViewController.tabBarItem.image = UIImage(named: "person.circle.fill")
      
        feedNavViewController.tabBarItem.title = "Лента"
        feedNavViewController.tabBarItem.image = UIImage(named: "cursorarrow.and.square.on.square.dashed")
        
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = [profileNavViewController, feedNavViewController]
        tabBarController.tabBar.backgroundColor = .white
        
        window.backgroundColor = .white
        window.rootViewController = tabBarController
        self.window = window
        window.makeKeyAndVisible()
        
    }

    func sceneDidDisconnect(_ scene: UIScene) {
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
    }

    func sceneWillResignActive(_ scene: UIScene) {
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
    }


}

