//
//  MWImages.swift
//  MoonWalker
//
//  Created by josh on 2018/07/09.
//

import UIKit

// MARK: - Image types

public struct MWBackgroundImage: Equatable {
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

public struct MWMainImage: Equatable {
    public var image: UIImage?
    public var contentMode: UIViewContentMode
    public var layout: MWMainImageLayout

    public init(
        image: UIImage? = nil,
        contentMode: UIViewContentMode = .scaleAspectFit,
        layout: MWMainImageLayout = MWMainImageLayout()
    ) {
        self.image = image
        self.contentMode = contentMode
        self.layout = layout
    }
}

public struct MWLowerImage: Equatable {
    public var image: UIImage?
    public var contentMode: UIViewContentMode
    public var layout: MWLowerItemLayout

    public init(
        image: UIImage? = nil,
        contentMode: UIViewContentMode = .scaleAspectFit,
        layout: MWLowerItemLayout = MWLowerItemLayout()
    ) {
        self.image = image
        self.contentMode = contentMode
        self.layout = layout
    }
}

// MARK: - Image layout

/// This represents layout properties of the main image, which are
/// implemented in MWCenteredItemLayout (a common type for objects
/// with similar layout properties)
public typealias MWMainImageLayout = MWCenteredItemLayout

public struct MWBackgroundImageLayout: RegularLayout, SubviewAddable, Equatable {
    var leadingConstant: CGFloat
    var trailingConstant: CGFloat
    var bottomConstant: CGFloat
    var topConstant: CGFloat
    var useSafeAreaLayoutGuide: Bool

    public init(
        leadingConstant: CGFloat = 0.0,
        trailingConstant: CGFloat = 0.0,
        bottomConstant: CGFloat = 0.0,
        topConstant: CGFloat = 0.0,
        // Stretching into safe area for iPhone X is generally preferrable
        useSafeAreaLayoutGuide: Bool = false
    ) {
        self.leadingConstant = leadingConstant
        self.trailingConstant = trailingConstant
        self.bottomConstant = bottomConstant
        self.topConstant = topConstant
        self.useSafeAreaLayoutGuide = useSafeAreaLayoutGuide
    }
}
