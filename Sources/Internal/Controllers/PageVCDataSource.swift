//
//  PageVCDataSource.swift
//  MoonWalker
//
//  Created by josh on 2018/06/26.
//

class PageVCDataSource: NSObject {

    private var childViewControllers: [ChildViewController] = []

    var viewControllerCount: Int { return childViewControllers.count }

    init(childVCs: [ChildViewController]) {
        super.init()

        self.childViewControllers = childVCs
    }

}

extension PageVCDataSource: UIPageViewControllerDataSource {

    // Before
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let viewController = viewController as? ChildViewController else {
            return nil
        }

        return childViewControllers[before: viewController.index]
    }

    // After
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let viewController = viewController as? ChildViewController else {
            return nil
        }

        return childViewControllers[after: viewController.index]
    }

    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        return (pageViewController.viewControllers?.first as? ChildViewController)?.index ?? 0
    }

}
