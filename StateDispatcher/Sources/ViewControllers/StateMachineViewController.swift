//
//  StateMachineViewController.swift
//  StateDispatcher
//
//  Created by Anton Lisovoy on 04.07.2020.
//  Copyright © 2020 Anton Lisovoy. All rights reserved.
//

import UIKit

open class StateMachineViewController: UIViewController, StateChangesApplyer {
  public let controllersProvider: StateControllersProvider

  public init(controllersProvider: StateControllersProvider) {
    self.controllersProvider = controllersProvider
    super.init(nibName: nil, bundle: nil)
  }

  required public init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  open func changeTo(state: StateMachine) {
    let targetController: UIViewController?
    let contentController = controllersProvider.contentViewController()
    switch state {
    case .loading:
      targetController = controllersProvider.loadingViewController() ?? contentController
    case .content:
      targetController = contentController
    case .error:
      targetController = controllersProvider.errorViewController() ?? contentController
    case .empty:
      targetController = controllersProvider.emptyViewController() ?? contentController
    }
    removePreviousChildAndAdd(viewController: targetController)
  }
}
