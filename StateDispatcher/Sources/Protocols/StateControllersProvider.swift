//
//  StateControllersProvider.swift
//  StateDispatcher
//
//  Created by Anton Lisovoy on 04.07.2020.
//  Copyright © 2020 Anton Lisovoy. All rights reserved.
//

import UIKit.UIViewController

/// The protocol that provides controllers for each state of a state machine
public protocol StateControllersProvider: class {
  associatedtype StateMachine

  /// Provides controllers for the state of a state machine
  /// - Parameter state: The state of a state machine
  /// - Returns: The view controller for the provided state of a state machine
  func controller(forState state: StateMachine) -> UIViewController?
}
