//
//  MoonWalkerCoordinator.swift
//  MoonWalker
//
//  Created by josh on 2018/06/20.
//

/**
 This struct or class will contain the following methods:

 * displayWalkthrough([WalkthroughChildView])
    * creates and displays ParentVC

 */

struct MoonWalkerCoordinator {

    public var viewSettings = WalkthroughViewSettings()

    var childViewControllers: [ChildViewController] = []
    // set walkthroughViewSetting for each child

    init(
        viewSettings: WalkthroughViewSettings = WalkthroughViewSettings(),
        childViewControllers: [ChildViewController] = []
    ) {
        self.viewSettings = viewSettings
        self.childViewControllers = childViewControllers
    }
}
