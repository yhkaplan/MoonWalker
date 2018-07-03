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
    public var mainImage: MainImageSettings
    public var backgroundImage: BackgroundImageSettings

    public init(
        upperLabel: UpperLabelSettings = UpperLabelSettings(),
        lowerLabel: LowerLabelSettings = LowerLabelSettings(),
        childView: UIView? = nil,
        mainImage: MainImageSettings = MainImageSettings(),
        backgroundImage: BackgroundImageSettings = BackgroundImageSettings()
    ) {
        self.upperLabel = upperLabel
        self.lowerLabel = lowerLabel
        self.childView = childView
        self.mainImage = mainImage
        self.backgroundImage = backgroundImage
    }

}
