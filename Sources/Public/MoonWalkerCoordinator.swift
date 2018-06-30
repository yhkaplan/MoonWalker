//
//  MoonWalkerCoordinator.swift
//  MoonWalker
//
//  Created by josh on 2018/06/20.
//


public struct ChildView {

    let childViewContents: MWChildViewModel
    let viewSettings: MWChildViewLayoutSettings

    public init(childViewContents: MWChildViewModel, viewSettings: MWChildViewLayoutSettings) {
        self.childViewContents = childViewContents
        self.viewSettings = viewSettings
    }

}

public struct MoonWalkerCoordinator { //TODO: rename to ViewModel or something
    
    var childViews: [ChildView] = []

    private var childViewControllers: [ChildViewController] {
        
        return childViews.enumerated().map { index, childView in
            return ChildViewController(
                childView: childView.childViewContents,
                index: index,
                settings: childView.viewSettings
            )
        }
    }
    
    public init(childViews: [ChildView]) {
        self.childViews = childViews
    }

}

public extension MoonWalkerCoordinator {

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
