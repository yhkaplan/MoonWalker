//
//  MWCoordinator.swift
//  MoonWalker
//
//  Created by josh on 2018/06/20.
//

public struct MWCoordinator {
    
    var childViews: [MWChildView] = []

    private var childViewControllers: [ChildViewController] {
        
        return childViews.enumerated().map { index, childView in
            return ChildViewController(
                childView: childView.viewModel,
                index: index,
                settings: childView.layoutSettings
            )
        }
    }
    
    public init(childViews: [MWChildView]) {
        self.childViews = childViews
    }

}

public extension MWCoordinator {

    var walkthroughViewController: UIViewController {
        
        let pageViewController = UIPageViewController(
            transitionStyle: .pageCurl,
            navigationOrientation: .horizontal,
            options: nil //TODO: check
        )
        
        //TODO: Add PageViewControllerDelegate for callbacks
        
        let dataSource = PageVCDataSource(childVCs: childViewControllers)
        pageViewController.dataSource = dataSource
        
        if let initiallyVisableVC = childViewControllers.first {
            pageViewController.setViewControllers(
                [initiallyVisableVC],
                direction: .forward,
                animated: true
            )
        }
        
        return ParentViewController(
            pageVC: pageViewController
        )
    }

}
