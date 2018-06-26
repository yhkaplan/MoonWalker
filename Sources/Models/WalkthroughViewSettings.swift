//
//  WalkthroughViewSettings.swift
//  MoonWalker
//
//  Created by josh on 2018/06/20.
//

/**
 This struct represents the layout and appearance for your Walkthrough views
 */
public struct WalkthroughViewSettings {
    let upperLabel: UpperLabel

    init(
        upperLabel: UpperLabel = UpperLabel()
    ) {
        self.upperLabel = upperLabel
    }
}

public struct UpperLabel {
    let leadingConstant: CGFloat
    let trailingConstant: CGFloat
    let topConstant: CGFloat
    let height: CGFloat

    init(
        leadingConstant: CGFloat = 20.0,
        trailingConstant: CGFloat = 20.0,
        topConstant: CGFloat = 20.0,
        height: CGFloat = 40.0
        ) {
        self.leadingConstant = leadingConstant
        self.trailingConstant = trailingConstant
        self.topConstant = topConstant
        self.height = height
    }
}
