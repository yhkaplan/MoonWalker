//
//  MWChildViewController.swift
//  MoonWalker
//
//  Created by josh on 2018/07/20.
//

import UIKit

public struct MWChildViewController: Equatable {
    public var viewController: UIViewController?
    public var layout: CenteredObjectLayout

    public init(
        viewController: UIViewController? = nil,
        layout: CenteredObjectLayout = CenteredObjectLayout()
        ) {
        self.viewController = viewController
        self.layout = layout
    }

    func embed(in parentVC: UIViewController) {
        guard let viewController = viewController else { return }

        parentVC.embed(
            childVC: viewController,
            leadingConstant: layout.leadingConstant,
            trailingConstant: layout.trailingConstant,
            topConstant: layout.topConstant,
            bottomConstant: layout.bottomConstant
        )
    }
}
