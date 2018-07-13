//
//  PageVCConfigurator.swift
//  MoonWalker
//
//  Created by josh on 2018/07/02.
//

extension UIPageViewController {

    func setInitialViewController(from viewControllers: [UIViewController]) {
        guard let initialViewController = viewControllers.first else {
            assertionFailure("Empty array"); return
        }

        setViewControllers(
            [initialViewController],
            direction: .forward,
            animated: true
        )
    }

    func setup(
        with childVCs: [UIViewController],
        dataSource: UIPageViewControllerDataSource,
        delegate: UIPageViewControllerDelegate
    ) {
        self.delegate = delegate
        self.dataSource = dataSource
        setInitialViewController(from: childVCs)
    }

    static func build() -> UIPageViewController {
        return  UIPageViewController(
            transitionStyle: .scroll,
            navigationOrientation: .horizontal,
            options: nil
        )
    }

}
