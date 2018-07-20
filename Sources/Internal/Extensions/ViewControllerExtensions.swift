//
//  ViewControllerExtensions.swift
//  MoonWalker
//
//  Created by josh on 2018/06/27.
//

import UIKit

extension UIViewController {

    // Referenced: https://developer.apple.com/library/content/featuredarticles/ViewControllerPGforiPhoneOS/ImplementingaContainerViewController.html#//apple_ref/doc/uid/TP40007457-CH11-SW1
    func embed(
        childVC: UIViewController,
        leadingConstant: CGFloat = 0.0,
        trailingConstant: CGFloat = 0.0,
        topConstant: CGFloat = 0.0,
        bottomConstant: CGFloat = 0.0
    ) {
        addChildViewController(childVC)
        view.addSubviewWithConstraints(
            childVC.view,
            leadingConstant: leadingConstant,
            trailingConstant: trailingConstant,
            topConstant: topConstant,
            bottomConstant: bottomConstant
        )
        childVC.didMove(toParentViewController: self)
    }

}
