//
//  StateMachineManageable.swift
//  StateDispatcher
//
//  Created by Anton Lisovoy on 16.07.2020.
//  Copyright © 2020 Anton Lisovoy. All rights reserved.
//

/// The protocol that provides the manager of the state of state machine
public protocol StateMachineManageable: class {
  associatedtype Provider: StateProvider

  /// Provider of the state of a state machine
  var stateProvider: Provider? { get set }
}
