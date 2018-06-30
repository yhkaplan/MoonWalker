//
//  MWCoordinator.swift
//  MoonWalker
//
//  Created by josh on 2018/06/20.
//

public func createWalkthroughViewController(from childViews: [MWChildView]) -> UIViewController {
    
    let pageViewController = UIPageViewController(
        transitionStyle: .scroll,
        navigationOrientation: .horizontal,
        options: nil //TODO: check
    )
    
    //TODO: Add PageViewControllerDelegate for callbacks
    let childVCs = createChildViewControllers(from: childViews)
    
    setInitialChildViewController(for: pageViewController, childVCs: childVCs)
    setDataSourceDelegate(for: pageViewController, childVCs: childVCs)
    
    return ParentViewController(pageVC: pageViewController)
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
