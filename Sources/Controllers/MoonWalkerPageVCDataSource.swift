//
//  MoonWalkerPageVCDataSource.swift
//  MoonWalker
//
//  Created by josh on 2018/06/26.
//

class MoonWalkerPageVCDataSource: NSObject {

    private var childViewControllers: [ChildViewController] = []

    var presentationIndex: Int = 0

    init(childVCs: [ChildViewController]) {
        super.init()

        self.childViewControllers = childVCs
    }
}

extension MoonWalkerPageVCDataSource: UIPageViewControllerDataSource {

    // Before
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let viewController = viewController as? ChildViewController else {
            assertionFailure("Not ChildViewController")
            return nil
        }

        return getViewController(before: viewController.index)
    }

    // After
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let viewController = viewController as? ChildViewController else {
            assertionFailure("Not ChildViewController")
            return nil
        }

        return getViewController(after: viewController.index)
    }

    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return childViewControllers.count
    }

    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        return presentationIndex //TODO: defaults to zero? //return presentationIndex?
    }

}

private extension MoonWalkerPageVCDataSource {

    func getViewController(before index: Int) -> UIViewController {
        if index == 0 {
            return childViewControllers.last ?? UIViewController()
        }

        return childViewControllers[index - 1]
    }

    func getViewController(after index: Int) -> UIViewController {
        if index == childViewControllers.endIndex {
            return childViewControllers.first ?? UIViewController()
        }

        return childViewControllers[index + 1]
    }

}
