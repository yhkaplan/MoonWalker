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

    public var childViews: [MWChildView]

    public init(childViews: [MWChildView]) {
        self.childViews = childViews
    }

}

public extension MWParentViewCreator {

    func getParentViewController() -> UIViewController { //TODO: make this throwing
        let childViewControllers = makeChildViewControllers()
        let dataSource = PageVCDataSource(childVCs: childViewControllers)

        let pageViewController = UIPageViewController.build()
        pageViewController.setup(with: childViewControllers, dataSource: dataSource)

        return ParentViewController(pageVC: pageViewController, dataSource: dataSource)
    }

}

private extension MWParentViewCreator {

    func makeChildViewControllers() -> [ChildViewController] {
        return childViews.enumerated().map { index, childView in
            return ChildViewController(
                childView: childView.viewModel,
                index: index,
                settings: childView.layoutSettings
            )
        }
    }

}
