//
//  AppDelegate.swift
//  Example
//
//  Copyright © 2018 yhkaplan. All rights reserved.
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

        let viewModel = MWChildViewModel(upperLabelText: "Hey")
        let settings = MWChildViewLayoutSettings()

        let views = [0...10].map { index -> MWChildView in
            return MWChildView(viewModel: viewModel, layoutSettings: settings)
        }

        let walkthroughVC = createWalkthroughViewController(from: views)

        window.rootViewController = walkthroughVC
        window.makeKeyAndVisible()

        return true
    }

}

