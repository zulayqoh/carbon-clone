//
//  SceneDelegate.swift
//  CarbonSignup
//
//  Created by Decagon on 23/08/2021.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
  
  var window: UIWindow?
  
  
  func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
    
    
    guard let windowScene = (scene as? UIWindowScene) else { return }
    let rootViewController = HomeViewController()
    
    let navigationController = UINavigationController(rootViewController: rootViewController)
    
    window = UIWindow(frame: windowScene.coordinateSpace.bounds)
    window?.windowScene = windowScene
    window?.rootViewController = navigationController
    window?.makeKeyAndVisible()
  }
  
}
