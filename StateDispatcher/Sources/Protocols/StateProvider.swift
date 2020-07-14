//
//  StateProvider.swift
//  StateDispatcher
//
//  Created by Anton Lisovoy on 04.07.2020.
//  Copyright © 2020 Anton Lisovoy. All rights reserved.
//

public protocol StateProvider: class {
  var initialState: StateMachine { get }
}
