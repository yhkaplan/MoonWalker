//
//  PageViewControllerExtensions.swift
//  MoonWalker
//
//  Created by josh on 2018/07/02.
//

import UIKit

extension UIPageViewController {

    static var `default`: UIPageViewController {
        return  UIPageViewController(
            transitionStyle: .scroll,
            navigationOrientation: .horizontal,
            options: nil
        )
    }

    func setup(
        with childVCs: [UIViewController],
        dataSource: UIPageViewControllerDataSource,
        delegate: UIPageViewControllerDelegate,
        animated: Bool = true
    ) {
        self.delegate = delegate
        self.dataSource = dataSource
        setInitialViewController(from: childVCs, animated: animated)
    }

    func setInitialViewController(from viewControllers: [UIViewController], animated: Bool) {
        guard let initialViewController = viewControllers.first else {
            assertionFailure("Empty array"); return
        }

        setViewControllers(
            [initialViewController],
            direction: .forward,
            animated: true
        )
    }

}
