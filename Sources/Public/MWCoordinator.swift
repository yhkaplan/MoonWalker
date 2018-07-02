//
//  MWCoordinator.swift
//  MoonWalker
//
//  Created by josh on 2018/06/20.
//

/*
 * This struct is resposible for:
 * 1. creating ParentViewController,
 * 2. retaining a weak reference to dataSource
 * 3. holding childVCs
 */
public struct MWParentViewModel {

    public var childViews: [MWChildView]

    private lazy var childVCs: [ChildViewController] = {
        return childViews.enumerated().map { index, childView in
            return ChildViewController(
                childView: childView.viewModel,
                index: index,
                settings: childView.layoutSettings
            )
        }
    }()

    private lazy var pageVCConfigurator: PageVCConfigurator = {
        return PageVCConfigurator(pageViewController: pageViewController)
    }()

    private let pageViewController = UIPageViewController(
        transitionStyle: .scroll,
        navigationOrientation: .horizontal,
        options: nil
    )

    private var dataSource: UIPageViewControllerDataSource? //TODO: check for memory leaks here

    public init(childViews: [MWChildView]) {
        self.childViews = childViews
        self.dataSource = PageVCDataSource(childVCs: childVCs)
    }

}

public extension MWParentViewModel {

    mutating func getParentViewController() -> UIViewController {
        //TODO: Add PageViewControllerDelegate for callbacks

        pageVCConfigurator.setDataSource(dataSource)
        if let initialViewController = childVCs.first {
            pageVCConfigurator.setInitialChildViewController(to: initialViewController)
        }

        return ParentViewController(pageVC: pageViewController)
    }

}
