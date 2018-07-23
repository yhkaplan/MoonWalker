//
//  MWImages.swift
//  MoonWalker
//
//  Created by josh on 2018/07/09.
//

import UIKit

// MARK: - Image types

public struct MWBackgroundImageSettings: Equatable {
    public var image: UIImage?
    public var contentMode: UIViewContentMode
    public var layout: MWBackgroundImageLayout

    public init(
        image: UIImage? = nil,
        contentMode: UIViewContentMode = .scaleAspectFill,
        layout: MWBackgroundImageLayout = MWBackgroundImageLayout()
    ) {
        self.image = image
        self.contentMode = contentMode
        self.layout = layout
    }
}

public struct MWMainImageSettings: Equatable {
    public var image: UIImage?
    public var contentMode: UIViewContentMode
    public var layout: MWCenteredObjectLayout

    public init(
        image: UIImage? = nil,
        contentMode: UIViewContentMode = .scaleAspectFill,
        layout: MWCenteredObjectLayout = MWCenteredObjectLayout()
    ) {
        self.image = image
        self.contentMode = contentMode
        self.layout = layout
    }
}

// MARK: - Image layout

/// This represents layout properties of the main image, which are
/// implemented in MWCenteredObjectLayout (a common type for objects
/// with similar layout properties)
public typealias MWMainImageLayout = MWCenteredObjectLayout

public struct MWBackgroundImageLayout: RegularLayout, SubviewAddable, Equatable {
    var leadingConstant: CGFloat
    var trailingConstant: CGFloat
    var bottomConstant: CGFloat
    var topConstant: CGFloat

    public init(
        leadingConstant: CGFloat = 0.0,
        trailingConstant: CGFloat = 0.0,
        bottomConstant: CGFloat = 0.0,
        topConstant: CGFloat = 0.0
    ) {
        self.leadingConstant = leadingConstant
        self.trailingConstant = trailingConstant
        self.bottomConstant = bottomConstant
        self.topConstant = topConstant
    }
}
