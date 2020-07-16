# StateDispatcher
[![Version](https://img.shields.io/cocoapods/v/StateDispatcher.svg?style=flat)](http://cocoapods.org/pods/StateDispatcher)
[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg?style=flat)](https://github.com/AntonLisovoy/StateDispatcher/blob/master/LICENSE.md)
[![Platform](https://img.shields.io/cocoapods/p/StateDispatcher.svg?style=flat)](http://cocoapods.org/pods/StateDispatcher)
[![Swift 5.0](https://img.shields.io/badge/Swift-5.0-orange.svg?style=flat)](https://developer.apple.com/swift/)
![iOS 11.0+](https://img.shields.io/badge/iOS-11.0%2B-blue.svg)

## Intoduction
A simple state machine to show different view controllers using children view controllers.

![demo](Images/demo.gif)

## Usage
### Basic
```swift
import StateDispatcher
```

Your container view controller, that needs to be state machinable, should confirm `StateMachinable`
```swift
class ContentStateMachineViewController: UIViewController, StateMachinable {
  var stateProvider: ContentStateProvider?
  var stateControllersProvider: ContentStateControllersProvider?

  func changeTo(state: ContentStateMachine) {
    ...
  }
  ...
}
```

See demo project for more information.

## Requirements
`StateDispatcher` written in Swift 5.0. Compatible with iOS 11.0+

## Installation

### Cocoapods

StateDispatcher is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'StateDispatcher'
```
### Carthage
```
github "AntonLisovoy/StateDispatcher"
```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## Author
[Anton Lisovoy](https://twitter.com/AntonLisovoy)

## License
StateDispatcher is available under the MIT license. See the [LICENSE.md](LICENSE.md) file for more info.
