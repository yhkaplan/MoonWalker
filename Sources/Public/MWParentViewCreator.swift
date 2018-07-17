//
//  MWParentViewCreator.swift
//  MoonWalker
//
//  Created by josh on 2018/06/20.
//

/*
 * This struct is resposible for:
 * 1. creating ParentViewController
 */
open class MWParentViewCreator {

    public var childViews: [MWChildViewModel]

    public init(childViews: [MWChildViewModel]) {
        self.childViews = childViews
    }

}

public extension MWParentViewCreator {

    func getParentViewController() -> UIViewController { //TODO: make this throwing
        let childViewControllers = getChildViewControllers()
        let dataSource = PageVCDataSource(childVCs: childViewControllers)
        let delegate = PageVCDelegate()

        let pageViewController = UIPageViewController.default
        pageViewController.setup(
            with: childViewControllers,
            dataSource: dataSource,
            delegate: delegate
        )

        return ParentViewController(
            pageVC: pageViewController,
            dataSource: dataSource,
            delegate: delegate
        )
    }

}

private extension MWParentViewCreator {

    func getChildViewControllers() -> [ChildViewController] {
        return childViews.enumerated().map { index, childView in
            return ChildViewController(
                childViewModel: childView,
                index: index
            )
        }
    }

}
