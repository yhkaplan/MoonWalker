//
//  UIViewControllerExtensions.swift
//  MoonWalker
//
//  Created by josh on 2018/06/27.
//

import UIKit

extension UIViewController {

    // Referenced: https://developer.apple.com/library/content/featuredarticles/ViewControllerPGforiPhoneOS/ImplementingaContainerViewController.html#//apple_ref/doc/uid/TP40007457-CH11-SW1
    func embed(childVC: UIViewController) {
        addChildViewController(childVC)
        view.addSubviewWithConstraints(childVC.view)
        childVC.didMove(toParentViewController: self)
    }

}
