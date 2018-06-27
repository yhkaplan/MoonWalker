//
//  AppDelegate.swift
//  Example
//
//  Copyright © 2016 yhkaplan. All rights reserved.
//

import UIKit
import MoonWalker

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

        guard let window = window else {
            fatalError()
        }

        let walkthroughChildView = WalkthroughChildView(upperLabelText: "Hey")
        let settings = WalkthroughViewSettings()

        let views = [0...10].map { index -> ChildView in
            return ChildView(childViewContents: walkthroughChildView, viewSettings: settings)
        }

        let coordinator = MoonWalkerCoordinator(childViews: views)
        let walkthroughVC = coordinator.walkthroughViewController

        window.rootViewController = walkthroughVC
        window.makeKeyAndVisible()

        return true
    }

}

