//
//  ContentStateControllersProvider.swift
//  StateDispatcherDemo
//
//  Created by Anton Lisovoy on 08.07.2020.
//  Copyright © 2020 Anton Lisovoy. All rights reserved.
//

import UIKit

final class ContentStateControllersProvider: StateControllersProvider {
  func loadingViewController() -> UIViewController? {
    return nil
  }

  func contentViewController() -> UIViewController {
    let controller = UIViewController()
    controller.view.backgroundColor = .red
    return controller
  }

  func errorViewController() -> UIViewController? {
    return nil
  }

  func emptyViewController() -> UIViewController? {
    return nil
  }
}
