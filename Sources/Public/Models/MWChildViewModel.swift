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

    let upperLabelText: String?
    let lowerLabelText: String?
    let childView: UIView?
    let mainImage: UIImage?
    let backgroundImage: UIImage?

    public init(
        upperLabelText: String? = nil,
        lowerLabelText: String? = nil,
        childView: UIView? = nil,
        mainImage: UIImage? = nil,
        backgroundImage: UIImage? = nil
    ) {
        self.upperLabelText = upperLabelText
        self.lowerLabelText = lowerLabelText
        self.childView = childView
        self.mainImage = mainImage
        self.backgroundImage = backgroundImage
    }

}
