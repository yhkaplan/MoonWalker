//
//  MWParentViewModel.swift
//  MoonWalker
//
//  Created by josh on 2018/07/11.
//

/**
 This struct represents the data that will fill the main parent view
 */
public struct MWParentViewModel: Equatable {
    public var leftButton: MWButton?
    public var rightButton: MWButton?
    public var pageControl: MWPageControl?

    public init(
        leftButton: MWButton? = MWButton(
            label: "Skip",
            action: .dismissWalkthrough,
            layout: MWButtonLayout(leading: 16.0)
        ),
        rightButton: MWButton = MWButton(
            label: "Next",
            action: .nextPage,
            layout: MWButtonLayout(trailing: -16.0)
        ),
        pageControl: MWPageControl = MWPageControl()
    ) {
        self.leftButton = leftButton
        self.rightButton = rightButton
        self.pageControl = pageControl
    }
}
