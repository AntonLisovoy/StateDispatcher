//
//  StateChangesApplyer.swift
//  StateDispatcher
//
//  Created by Anton Lisovoy on 04.07.2020.
//  Copyright © 2020 Anton Lisovoy. All rights reserved.
//

/// The protocol that changes controllers based on state changes
public protocol StateChangesApplyer {
  associatedtype ControllersProvider: StateControllersProvider
  associatedtype StateMachine

  /// The object that provides controllers for state of a state machine
  var stateControllersProvider: ControllersProvider? { get set }
  
  /// Change the current controller to controller based on the provided state
  /// - Parameter state: The state of a state machine
  func changeTo(state: StateMachine)
}
