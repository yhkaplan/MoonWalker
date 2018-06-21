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
    let upperLabelHeight: CGFloat

    //TODO: add lower label properties

    init(
        upperLabelLeadingConstant: CGFloat = 20.0,
        upperLabelTrailingConstant: CGFloat = 20.0,
        upperLabelTopConstant: CGFloat = 20.0,
        upperLabelHeight: CGFloat = 40.0
    ) {
        self.upperLabelLeadingConstant = upperLabelLeadingConstant
        self.upperLabelTrailingConstant = upperLabelTrailingConstant
        self.upperLabelTopConstant = upperLabelTopConstant
        self.upperLabelHeight = upperLabelHeight
    }
}
