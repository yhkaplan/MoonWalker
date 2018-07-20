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

        guard let window = window else { fatalError() }

        let views = [0, 1, 2].map { index -> MWChildViewModel in

            let upperLabel = MWUpperLabelSettings(text: "Screen \(index)")
            let image = UIImage(named: "screen\(index)")
            let backgroundImage = MWBackgroundImageSettings(image: image)

            return MWChildViewModel(upperLabel: upperLabel, backgroundImage: backgroundImage)
        }

        let creator = MWParentViewCreator(childViews: views)
        let walkthroughVC = creator.getParentViewController()

        window.rootViewController = walkthroughVC
        window.makeKeyAndVisible()

        return true
    }

}

