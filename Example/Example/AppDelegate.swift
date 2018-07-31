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

        let views = [0, 1, 2].map { index -> MWChildViewModel in

            let font = UIFont.boldSystemFont(ofSize: 20.0)
            let settings = MWTextSettings(font: font, color: .white, hasBlurredShadow: true)
            let upperLabel = MWLowerLabel(text: "Test McTest Face \(index)", textSettings: settings)
            let image = UIImage(named: "screen\(index)")
            let backgroundImage = MWBackgroundImage(image: image)

            return MWChildViewModel(lowerLabel: upperLabel, backgroundImage: backgroundImage)
        }

        let creator = MWParentViewCreator(childViewModels: views)
        let walkthroughVC = creator.getParentViewController()

        window!.rootViewController = walkthroughVC
        window!.makeKeyAndVisible()

        return true
    }

}

