//
//  MWParentViewCreator.swift
//  MoonWalker
//
//  Created by josh on 2018/06/20.
//

/// A custom action settable for when the last page is reached
public typealias MWCustomAction = () -> Void

/*
 * This struct is resposible for:
 * 1. creating ParentViewController
 */
open class MWParentViewCreator {

    public var childViews: [MWChildViewModel]
    public var viewModel: MWParentViewModel
    public var customActionAfterLastPage: MWCustomAction?

    public init(
        childViews: [MWChildViewModel],
        viewModel: MWParentViewModel = MWParentViewModel(),
        customActionAfterLastPage: MWCustomAction? = nil
    ) {
        self.childViews = childViews
        self.viewModel = viewModel
        self.customActionAfterLastPage = customActionAfterLastPage
    }

}

public extension MWParentViewCreator {

    func getParentViewController() -> UIViewController {

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
            delegate: delegate,
            viewModel: viewModel,
            customActionAfterLastPage: customActionAfterLastPage
        )
    }

}

private extension MWParentViewCreator {

    func getChildViewControllers() -> [ChildViewController] {
        return childViews.enumerated().map { index, childView in
            ChildViewController(
                childViewModel: childView,
                index: index
            )
        }
    }

}
