//
//  WalkthroughViewSettings.swift
//  MoonWalker
//
//  Created by josh on 2018/06/20.
//

/**
 This struct represents the layout and appearance for your Walkthrough views
 */
public struct WalkthroughViewSettings { //TODO: make this each item into nested struct
    let upperLabelLeadingConstant: CGFloat
    let upperLabelTrailingConstant: CGFloat
    let upperLabelTopConstant: CGFloat
    let upperLabelHeightConstant: CGFloat

    //TODO: add lower label properties

    init(
        upperLabelLeadingConstant: CGFloat = 0.0,
        upperLabelTrailingConstant: CGFloat = 0.0,
        upperLabelTopConstant: CGFloat = 20.0,
        upperLabelHeightConstant: CGFloat = 40.0
    ) {
        self.upperLabelLeadingConstant = upperLabelLeadingConstant
        self.upperLabelTrailingConstant = upperLabelTrailingConstant
        self.upperLabelTopConstant = upperLabelTopConstant
        self.upperLabelHeightConstant = upperLabelHeightConstant
    }
}
