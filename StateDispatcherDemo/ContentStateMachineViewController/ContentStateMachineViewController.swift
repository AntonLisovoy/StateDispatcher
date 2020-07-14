//
//  ContentStateMachineViewController.swift
//  StateDispatcherDemo
//
//  Created by Anton Lisovoy on 08.07.2020.
//  Copyright © 2020 Anton Lisovoy. All rights reserved.
//

import UIKit

final class ContentStateMachineViewController: StateMachineViewController {

  private let settings: Settings

  init(settings: Settings, controllersProvider: StateControllersProvider) {
    self.settings = settings
    super.init(controllersProvider: controllersProvider)
  }

  required public init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    title = "Content"
    applyInitialState(settings.afterLoadingState)

    handleRetryAction()
  }

  private func applyInitialState(_ state: StateMachine) {
    changeTo(state: .loading)

    // Delay to simulate some network call
    DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(1)) {
      self.changeTo(state: state)
    }
  }

  private func handleRetryAction() {
    guard let errorController = controllersProvider.errorViewController() as? ErrorViewController else { return }
    errorController.onRetry = { [weak self] in
      guard let self = self else { return }
      self.applyInitialState(self.settings.afterRetryState)
    }
  }
}
