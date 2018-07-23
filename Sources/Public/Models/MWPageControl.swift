//
//  MWPageControl.swift
//  MoonWalker
//
//  Created by josh on 2018/07/17.
//

import UIKit

public struct MWPageControl: Equatable {
    public var pageIndicatorTintColor: UIColor?
    public var currentPageIndicatorTintColor: UIColor?
    public var isHiddenOnLastScreen: Bool
    public var layout: MWPageControlLayout

    public init(
        pageIndicatorTintColor: UIColor? = nil,
        currentPageIndicatorTintColor: UIColor? = nil,
        isHiddenOnLastScreen: Bool = false,
        layout: MWPageControlLayout = MWPageControlLayout()
    ) {
        self.pageIndicatorTintColor = pageIndicatorTintColor
        self.currentPageIndicatorTintColor = currentPageIndicatorTintColor
        self.isHiddenOnLastScreen = isHiddenOnLastScreen
        self.layout = layout
    }
}

public struct MWPageControlLayout: Equatable {
    var centerXConstant: CGFloat
    var bottomConstant: CGFloat

    public init(
        centerXConstant: CGFloat = 0.0,
        bottomConstant: CGFloat = -12.0
    ) {
        self.centerXConstant = centerXConstant
        self.bottomConstant = bottomConstant
    }
}

extension MWPageControlLayout: SubviewAddable {
    func addChildViewToParent(childView: UIView, parentView: UIView) {
        parentView.addSubviewWithConstraints(
            childView,
            centerXConstant: centerXConstant,
            bottomConstant: bottomConstant
        )
    }
}
