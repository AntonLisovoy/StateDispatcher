//
//  ContentStateMachineViewController.swift
//  StateDispatcherDemo
//
//  Created by Anton Lisovoy on 08.07.2020.
//  Copyright © 2020 Anton Lisovoy. All rights reserved.
//

import UIKit

final class ContentStateMachineViewController: UIViewController, StateMachinable {
  var stateProvider: ContentStateProvider?
  var stateControllersProvider: ContentStateControllersProvider?

  override func viewDidLoad() {
    super.viewDidLoad()
    title = "Content"
    if let stateProvider = stateProvider {
      changeTo(state: stateProvider.initialState)
      stateProvider.onStateDidChange = { [weak self] currentState in
        self?.changeTo(state: currentState)
      }
    }
    handleRetryAction()
  }

  func changeTo(state: ContentStateMachine) {
    removePreviousChildAndAdd(viewController: stateControllersProvider?.controller(forState: state))
  }

  private func handleRetryAction() {
    let errorController = stateControllersProvider?.controller(forState: .error) as? ErrorViewController
    errorController?.onRetry = { [weak self] in
      guard let self = self else { return }
      self.stateProvider?.handleRetryAction()
    }
  }
}
