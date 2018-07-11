//
//  MWButton.swift
//  MoonWalker
//
//  Created by josh on 2018/07/11.
//

import UIKit

public struct MWButton: Equatable {
    public var label: String?
    public var labelColor: UIColor
    public var backgroundImage: UIImage?
    public var layout: MWButtonLayout

    public init(
        label: String,
        labelColor: UIColor = .black,
        backgroundImage: UIImage? = nil,
        layout: MWButtonLayout
    ) {
        self.label = label
        self.labelColor = labelColor
        self.backgroundImage = backgroundImage
        self.layout = layout
    }
}

// TODO: see if this is needed
public protocol ButtonLayout {
    var leading: CGFloat? { get set }
    var trailing: CGFloat? { get set }
    var bottom: CGFloat { get set }
    var height: CGFloat { get set }
    var width: CGFloat { get set }
}

public struct MWButtonLayout: ButtonLayout, Equatable {
    public var leading: CGFloat?
    public var trailing: CGFloat?
    public var bottom: CGFloat
    public var height: CGFloat
    public var width: CGFloat

    public init(
        leading: CGFloat? = nil,
        trailing: CGFloat? = nil,
        bottom: CGFloat = 20.0,
        height: CGFloat = 50.0,
        width: CGFloat = 20.0
    ) {
        self.leading = leading
        self.trailing = trailing
        self.bottom = bottom
        self.height = height
        self.width = width
    }
}
