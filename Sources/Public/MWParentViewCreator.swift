//
//  MWParentViewCreator.swift
//  MoonWalker
//
//  Created by josh on 2018/06/20.
//

import UIKit

/*
 * This struct is resposible for:
 * 1. creating ParentViewController
 */
open class MWParentViewCreator {

    public var childViewModels: [MWChildViewModel]
    public var parentViewModel: MWParentViewModel

    public weak var buttonActionDelegate: MWButtonActionDelegate?
    public weak var pageChangeDelegate: MWPageChangeDelegate?

    public init(
        childViewModels: [MWChildViewModel],
        parentViewModel: MWParentViewModel = MWParentViewModel(),
        buttonActionDelegate: MWButtonActionDelegate? = nil,
        pageChangeDelegate: MWPageChangeDelegate? = nil
    ) {
        self.childViewModels = childViewModels
        self.parentViewModel = parentViewModel
        self.buttonActionDelegate = buttonActionDelegate
        self.pageChangeDelegate = pageChangeDelegate
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
            pageChangeDelegate: pageChangeDelegate,
            buttonActionDelegate: buttonActionDelegate
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
