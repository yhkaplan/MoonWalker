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

    public var childViewModels: [MWChildViewModel]
    public var parentViewModel: MWParentViewModel
    public var customActionAfterLastPage: MWCustomAction? //TODO: change to delegate

    public init(
        childViewModels: [MWChildViewModel],
        parentViewModel: MWParentViewModel = MWParentViewModel(),
        customActionAfterLastPage: MWCustomAction? = nil
    ) {
        self.childViewModels = childViewModels
        self.parentViewModel = parentViewModel
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
            parentViewModel: parentViewModel,
            customActionAfterLastPage: customActionAfterLastPage
        )
    }

}

private extension MWParentViewCreator {

    func getChildViewControllers() -> [ChildViewController] {
        return childViewModels.enumerated().map { index, childView in
            ChildViewController(
                childViewModel: childView,
                index: index
            )
        }
    }

}
