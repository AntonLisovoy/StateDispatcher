//
//  ContentStateProvider.swift
//  StateDispatcherDemo
//
//  Created by Anton Lisovoy on 15.07.2020.
//  Copyright © 2020 Anton Lisovoy. All rights reserved.
//

import Foundation

final class ContentStateProvider: StateProvider {
  let initialState: ContentStateMachine
  private(set) var currentState: ContentStateMachine {
    willSet {
      onStateDidChange?(newValue)
    }
  }

  var onStateDidChange: ((StateMachine) -> Void)?

  private let settings: Settings

  init(settings: Settings) {
    self.settings = settings
    initialState = .loading
    currentState = initialState

    simulateNetworkCall {
      self.currentState = settings.afterLoadingState
    }
  }

  func handleRetryAction() {
    currentState = initialState

    simulateNetworkCall {
      self.currentState = self.settings.afterRetryState
    }
  }

  private func simulateNetworkCall(execute: @escaping () -> Void) {
    // Delay to simulate some network call
    DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(1), execute: execute)
  }
}
