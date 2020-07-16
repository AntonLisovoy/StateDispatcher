//
//  StateProvider.swift
//  StateDispatcher
//
//  Created by Anton Lisovoy on 04.07.2020.
//  Copyright © 2020 Anton Lisovoy. All rights reserved.
//

/// The protocol that manages the state of a state machine
public protocol StateProvider {
  associatedtype StateMachine

  /// Represents the initial state of a state machine. This property shouldn't be changed during the lifecycle
  var initialState: StateMachine { get }
  /// Represents the current state of a state machine. This property may be changed during the lifecycle
  var currentState: StateMachine { get }
}
