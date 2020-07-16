//
//  SettingsViewController.swift
//  StateDispatcherDemo
//
//  Created by Anton Lisovoy on 08.07.2020.
//  Copyright © 2020 Anton Lisovoy. All rights reserved.
//

import UIKit

final class SettingsViewController: UIViewController {

  @IBOutlet private var afterLoadingSegmentedControl: UISegmentedControl!
  @IBOutlet private var afterRetrySegmentedControl: UISegmentedControl!

  private var settings = Settings()

  override func viewDidLoad() {
    super.viewDidLoad()
    title = "Settings"
  }

  @IBAction private func afterLoadingSegmentDidChanged(_ sender: UISegmentedControl) {
    guard let state = ContentStateMachine(rawValue: UInt(sender.selectedSegmentIndex)) else { return }
    afterRetrySegmentedControl.isEnabled = state == .error
    settings.afterLoadingState = state
  }

  @IBAction private func afterRetrySegmentDidChanged(_ sender: UISegmentedControl) {
    guard let state = ContentStateMachine(rawValue: UInt(sender.selectedSegmentIndex)) else { return }
    settings.afterRetryState = state
  }

  @IBAction func applyDidTapped(_ sender: Any) {
    let contentController = ContentStateMachineViewController()
    contentController.stateProvider = ContentStateProvider(settings: settings)
    contentController.stateControllersProvider = ContentStateControllersProvider()
    navigationController?.pushViewController(contentController, animated: true)
  }
}
