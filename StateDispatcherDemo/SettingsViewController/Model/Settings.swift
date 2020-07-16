//
//  Settings.swift
//  StateDispatcherDemo
//
//  Created by Anton Lisovoy on 08.07.2020.
//  Copyright © 2020 Anton Lisovoy. All rights reserved.
//

import Foundation

struct Settings {
  var afterLoadingState: ContentStateMachine = .content
  var afterRetryState: ContentStateMachine = .content
}
