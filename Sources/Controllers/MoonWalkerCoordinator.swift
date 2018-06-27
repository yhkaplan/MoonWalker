//
//  MoonWalkerCoordinator.swift
//  MoonWalker
//
//  Created by josh on 2018/06/20.
//


public typealias ChildViews = [(childViewContents: WalkthroughChildView, viewSettings: WalkthroughViewSettings)]

public struct MoonWalkerCoordinator { //TODO: rename to ViewModel or something
    
    var childViews: ChildViews = []

}

public extension MoonWalkerCoordinator {

    var walkthroughViewController: UIViewController {
        let dataSource = MoonWalkerPageVCDataSource(childVCs: childViewControllers)

        return ParentViewController(
            childWalkthroughVCs: childViewControllers,
            dataSource: dataSource
        )
    }

}

private extension MoonWalkerCoordinator {

    private var childViewControllers: [ChildViewController] {

        return childViews.enumerated().map { index, childView in
            return ChildViewController(
                childView: childView.childViewContents,
                index: index,
                settings: childView.viewSettings
            )
        }
    }

}
