# MoonWalker

<p align="left">
<a href="https://travis-ci.org/yhkaplan@gmail.com/MoonWalker"><img src="https://travis-ci.org/yhkaplan@gmail.com/MoonWalker.svg?branch=master" alt="Build status" /></a>
<img src="https://img.shields.io/badge/platform-iOS-blue.svg?style=flat" alt="Platform iOS" />
<a href="https://developer.apple.com/swift"><img src="https://img.shields.io/badge/swift4-compatible-4BC51D.svg?style=flat" alt="Swift 4 compatible" /></a>
<a href="https://github.com/Carthage/Carthage"><img src="https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat" alt="Carthage compatible" /></a>
<a href="https://cocoapods.org/pods/XLActionController"><img src="https://img.shields.io/cocoapods/v/MoonWalker.svg" alt="CocoaPods compatible" /></a>
<a href="https://raw.githubusercontent.com/yhkaplan@gmail.com/MoonWalker/master/LICENSE"><img src="http://img.shields.io/badge/license-MIT-blue.svg?style=flat" alt="License: MIT" /></a>
</p>

By [yhkaplan](http://yhkaplan@gmail.com.com).

## Introduction

MoonWalker is an easy to use walkthrough library.

<!-- <img src="Example/MoonWalker.gif" width="300"/> -->

## Usage

```swift
import MoonWalker
// ...
```

## Requirements

* iOS 10.0+
* Xcode 10.0+

## Getting involved

* If you **want to contribute** please feel free to **submit pull requests**.
* If you **have a feature request** please **open an issue**.

Before contribute check the [CONTRIBUTING](https://github.com/yhkaplan@gmail.com/MoonWalker/blob/master/CONTRIBUTING.md) file for more info.

## Usage
```swift
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

        let views = [0, 1, 2].map { index -> MWChildViewModel in

            let upperLabel = MWUpperLabelSettings(text: "Screen \(index)")
            let image = UIImage(named: "screen\(index)")
            let backgroundImage = MWBackgroundImageSettings(image: image)

            return MWChildViewModel(upperLabel: upperLabel, backgroundImage: backgroundImage)
        }

        let creator = MWParentViewCreator(childViews: views)
        let walkthroughVC = creator.getParentViewController()

        window!.rootViewController = walkthroughVC
        window!.makeKeyAndVisible()

        return true
    }
```

## Examples

Follow these 3 steps to run Example project: clone MoonWalker repository, open MoonWalker workspace and run the *Example* project.

## Installation

* If you are having issues installing, then it may be due to an old version of Sourcery that is incompatible with the latest file format. To fix this, please a). upgrade or b) uninstall sourcery.

### CocoaPods

[CocoaPods](https://cocoapods.org/) is a dependency manager for Cocoa projects.

To install MoonWalker, simply add the following line to your Podfile:

```ruby
pod 'MoonWalker', '~> 1.0'
```

### Carthage

[Carthage](https://github.com/Carthage/Carthage) is a simple, decentralized dependency manager for Cocoa.

To install MoonWalker, simply add the following line to your Cartfile:

```ogdl
github "yhkaplan@gmail.com/MoonWalker" ~> 1.0
```

## Author

* [yhkaplan](https://github.com/yhkaplan@gmail.com) ([@yhkaplan@gmail.com](https://twitter.com/yhkaplan@gmail.com))


# Changelog

See [CHANGELOG](CHANGELOG.md).
