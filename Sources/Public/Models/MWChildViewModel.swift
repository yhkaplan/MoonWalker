//
//  MWChildViewModel.swift
//  MoonWalker
//
//  Created by josh on 2018/06/20.
//  Copyright © 2018年 josh. All rights reserved.
//

/**
 This struct represents the data that will fill your Walkthrough views
*/
public struct MWChildViewModel {

    public var upperLabel: UpperLabelSettings
    public var lowerLabel: LowerLabelSettings
    public var childView: UIView?
    public var mainImage: UIImage?
    public var backgroundImage: UIImage?

    public init(
        upperLabel: UpperLabelSettings = UpperLabelSettings(),
        lowerLabel: LowerLabelSettings = LowerLabelSettings(),
        childView: UIView? = nil,
        mainImage: UIImage? = nil,
        backgroundImage: UIImage? = nil
    ) {
        self.upperLabel = upperLabel
        self.lowerLabel = lowerLabel
        self.childView = childView
        self.mainImage = mainImage
        self.backgroundImage = backgroundImage
    }

}
