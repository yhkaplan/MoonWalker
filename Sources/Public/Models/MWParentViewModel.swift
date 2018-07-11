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
    public var pageControl: UIPageControl // TODO: implement custom model

    public init(
        leftButton: MWButton? = MWButton(label: "Skip", layout: MWButtonLayout(leading: 20.0)),
        rightButton: MWButton = MWButton(label: "Next", layout: MWButtonLayout(trailing: -20.0)),
        pageControl: UIPageControl = UIPageControl()
    ) {
        self.leftButton = leftButton
        self.rightButton = rightButton
        self.pageControl = pageControl
    }
}
