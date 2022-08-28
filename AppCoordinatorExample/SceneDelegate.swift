//
//  SceneDelegate.swift
//  AppCoordinatorExample
//
//  Created by Дмитрий Фетюхин on 28.08.2022.
//

import UIKit

// Also need to delete "Storyboard name" in Info.plist and "Main Interface" in project file

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    var appCoordinator: AppCoordinator?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let scene = (scene as? UIWindowScene) else { return }
        
        let window = UIWindow(windowScene: scene)
        appCoordinator = AppCoordinator(window: window)
        appCoordinator?.start()
    }
}

