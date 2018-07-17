//
//  PageVCDelegate.swift
//  MoonWalker
//
//  Created by josh on 2018/07/13.
//

import UIKit

class PageVCDelegate: NSObject, UIPageViewControllerDelegate {

    weak var pageChangeDelegate: PageChangeDelegate?

    // didFinishAnimating
    func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
        guard completed else { return }

        let viewControllers = pageViewController.viewControllers

        guard
            let previousVC = previousViewControllers.first as? ChildViewController,
            let currentVC = viewControllers?[after: previousVC.index] as? ChildViewController,
            let currentIndex = currentVC.index
        else { return }

        pageChangeDelegate?.pageDidChange(to: currentIndex)

        //TODO: call didChangeToIndex here
    }

}
