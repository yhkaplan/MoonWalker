//
//  PageVCDataSource.swift
//  MoonWalker
//
//  Created by josh on 2018/06/26.
//

final class PageVCDataSource: NSObject {

    private var childViewControllers: [ChildViewController] = []

    init(childVCs: [ChildViewController]) {
        super.init()

        self.childViewControllers = childVCs
    }
}

extension PageVCDataSource: UIPageViewControllerDataSource {

    // Before
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let viewController = viewController as? ChildViewController else {
            assertionFailure("Not ChildViewController")
            return nil
        }

        return childViewControllers[before: viewController.index]
    }

    // After
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let viewController = viewController as? ChildViewController else {
            assertionFailure("Not ChildViewController")
            return nil
        }

        return childViewControllers[after: viewController.index]
    }

    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return childViewControllers.count
    }

    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        return 0 //TODO: defaults to zero?
    }

}
