//
//  ContentStateControllersProvider.swift
//  StateDispatcherDemo
//
//  Created by Anton Lisovoy on 08.07.2020.
//  Copyright © 2020 Anton Lisovoy. All rights reserved.
//

import UIKit

final class ContentStateControllersProvider: StateControllersProvider {
  private(set) var errorController: ErrorViewController?

  func controller(forState state: ContentStateMachine) -> UIViewController? {
    switch state {
    case .loading:
      return LoadingViewController()
    case .content:
      return ContentViewController()
    case .empty:
      return EmptyViewController()
    case .error:
      if errorController == nil {
        errorController = .init()
      }
      return errorController
    }
  }
}
