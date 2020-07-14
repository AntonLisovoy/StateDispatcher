//
//  ContentStateControllersProvider.swift
//  StateDispatcherDemo
//
//  Created by Anton Lisovoy on 08.07.2020.
//  Copyright © 2020 Anton Lisovoy. All rights reserved.
//

import UIKit

final class ContentStateControllersProvider: StateControllersProvider {
  private(set) var loadingController: LoadingViewController?
  private(set) var contentController: ContentViewController!
  private(set) var errorController: ErrorViewController?
  private(set) var emptyController: EmptyViewController?

  func loadingViewController() -> UIViewController? {
    if loadingController == nil {
      loadingController = .init()
    }
    return loadingController
  }

  func contentViewController() -> UIViewController {
    if contentController == nil {
      contentController = .init()
    }
    return contentController
  }

  func errorViewController() -> UIViewController? {
    if errorController == nil {
      errorController = .init()
    }
    return errorController
  }

  func emptyViewController() -> UIViewController? {
    if emptyController == nil {
      emptyController = .init()
    }
    return emptyController
  }
}
