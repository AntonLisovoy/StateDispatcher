//
//  UIViewController+child.swift
//  StateDispatcher
//
//  Created by Anton Lisovoy on 04.07.2020.
//  Copyright © 2020 Anton Lisovoy. All rights reserved.
//

import UIKit

public extension UIViewController {
  func addChild(viewController: UIViewController) {
    viewController.willMove(toParent: self)
    viewController.view.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(viewController.view)

    NSLayoutConstraint.activate([
      viewController.view.topAnchor.constraint(equalTo: view.topAnchor),
      viewController.view.bottomAnchor.constraint(equalTo: view.bottomAnchor),
      viewController.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
      viewController.view.trailingAnchor.constraint(equalTo: view.trailingAnchor)
    ])

    addChild(viewController)
    viewController.didMove(toParent: self)
  }

  func removeChild(viewController: UIViewController) {
    viewController.willMove(toParent: nil)
    viewController.view.removeFromSuperview()
    viewController.removeFromParent()
    viewController.didMove(toParent: nil)
  }

  func removeAllChildViewControllers() {
    children.forEach(removeChild)
  }

  func removePreviousChildAndAdd(viewController: UIViewController?) {
    guard let viewController = viewController else { return }
    removeAllChildViewControllers()
    addChild(viewController: viewController)
  }
}
