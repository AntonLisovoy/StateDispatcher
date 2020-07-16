//
//  AppDelegate.swift
//  StateDispatcherDemo
//
//  Created by Anton Lisovoy on 04.07.2020.
//  Copyright © 2020 Anton Lisovoy. All rights reserved.
//

import UIKit

@UIApplicationMain
final class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    let window = UIWindow()
    let settingsViewController = SettingsViewController(nibName: "SettingsViewController", bundle: nil)
    let navigationController = UINavigationController(rootViewController: settingsViewController)
    navigationController.navigationBar.prefersLargeTitles = true
    window.rootViewController = navigationController
    self.window = window
    window.makeKeyAndVisible()
    return true
  }
}

