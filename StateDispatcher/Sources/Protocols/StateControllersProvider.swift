//
//  StateControllersProvider.swift
//  StateDispatcher
//
//  Created by Anton Lisovoy on 04.07.2020.
//  Copyright © 2020 Anton Lisovoy. All rights reserved.
//

import UIKit

public protocol StateControllersProvider: class {
  func loadingViewController() -> UIViewController?
  func contentViewController() -> UIViewController
  func errorViewController() -> UIViewController?
  func emptyViewController() -> UIViewController?
}
