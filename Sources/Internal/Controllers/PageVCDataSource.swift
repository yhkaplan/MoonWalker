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

    func getLastPage() -> UIViewController? {
        return childViewControllers.last
    }

    func getNextPageIndex(for pageViewConroller: UIPageViewController) -> Int? {
        let currentIndex = presentationIndex(for: pageViewConroller)
        return childViewControllers.nextIndex(for: currentIndex)
    }

    func isLastPage(for pageViewController: UIPageViewController) -> Bool {
        return presentationIndex(for: pageViewController) == childViewControllers.finalValidIndex
    }

}

extension PageVCDataSource: UIPageViewControllerDataSource {

    // Before
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard
            let viewController = viewController as? ChildViewController,
            viewController.index != childViewControllers.startIndex
        else {
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

    // Current index
    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        return (pageViewController.viewControllers?.first as? ChildViewController)?.index ?? 0
    }

}
