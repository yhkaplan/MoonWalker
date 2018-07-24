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

    public var upperLabel: MWUpperLabelSettings
    public var lowerLabel: MWLowerLabelSettings
    public var childViewController: MWChildViewController
    public var mainImage: MWMainImageSettings
    public var backgroundImage: MWBackgroundImage

    public init(
        upperLabel: MWUpperLabelSettings = MWUpperLabelSettings(),
        lowerLabel: MWLowerLabelSettings = MWLowerLabelSettings(),
        childViewController: MWChildViewController = MWChildViewController(),
        mainImage: MWMainImageSettings = MWMainImageSettings(),
        backgroundImage: MWBackgroundImage = MWBackgroundImage()
    ) {
        self.upperLabel = upperLabel
        self.lowerLabel = lowerLabel
        self.childViewController = childViewController
        self.mainImage = mainImage
        self.backgroundImage = backgroundImage
    }

}
