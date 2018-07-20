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
public struct MWChildViewModel: Equatable {

    public var upperLabel: UpperLabelSettings
    public var lowerLabel: LowerLabelSettings
    public var childViewController: MWChildViewController
    public var mainImage: MainImageSettings
    public var backgroundImage: BackgroundImageSettings

    public init(
        upperLabel: UpperLabelSettings = UpperLabelSettings(),
        lowerLabel: LowerLabelSettings = LowerLabelSettings(),
        childViewController: MWChildViewController = MWChildViewController(),
        mainImage: MainImageSettings = MainImageSettings(),
        backgroundImage: BackgroundImageSettings = BackgroundImageSettings()
    ) {
        self.upperLabel = upperLabel
        self.lowerLabel = lowerLabel
        self.childViewController = childViewController
        self.mainImage = mainImage
        self.backgroundImage = backgroundImage
    }

}
