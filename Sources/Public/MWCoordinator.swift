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

    private var childVCs: [ChildViewController] {
        return createChildViewControllers
    }

    private let pageViewController = UIPageViewController(
        transitionStyle: .scroll,
        navigationOrientation: .horizontal,
        options: nil
    )

    private lazy var pageVCConfigurator: PageVCConfigurator = {
        return PageVCConfigurator(pageViewController: pageViewController)
    }()

    private weak var dataSource: UIPageViewControllerDataSource?

    init(childViews: [MWChildView]) {
        self.childViews = childViews
        self.dataSource = PageVCDataSource(childVCs: childVCs)
    }

}

fileprivate func createChildViewControllers(from childViews: [MWChildView]) -> [ChildViewController] {
    return childViews.enumerated().map { index, childView in
        return ChildViewController(
            childView: childView.viewModel,
            index: index,
            settings: childView.layoutSettings
        )
    }
}

fileprivate func setDataSourceDelegate(for pageViewController: UIPageViewController, childVCs: [ChildViewController]) {
    let dataSource = PageVCDataSource(childVCs: childVCs)
    pageViewController.dataSource = dataSource
}

fileprivate func setInitialChildViewController(for pageViewController: UIPageViewController, childVCs: [ChildViewController]) {
    guard let initiallyVisableVC = childVCs.first else {
        return
    }
    
    pageViewController.setViewControllers(
        [initiallyVisableVC],
        direction: .forward,
        animated: true
    )
}
