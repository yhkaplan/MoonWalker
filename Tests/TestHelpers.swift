//
//  TestHelpers.swift
//  MoonWalker
//
//  Created by josh on 2018/06/21.
//

import UIKit

func generateRandomCGFloat() -> CGFloat {
    return CGFloat(drand48())
}

extension UIViewController {

    /*
     * Calls viewDidLoad/Appear for testing purposes
     */
    func preloadView() {
        _ = view
    }

}
