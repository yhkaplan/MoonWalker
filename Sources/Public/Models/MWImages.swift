//
//  MWImages.swift
//  MoonWalker
//
//  Created by josh on 2018/07/09.
//

// MARK: - Image types

public struct MWBackgroundImageSettings: Equatable {
    public var image: UIImage?
    public var layout: MWBackgroundImageLayout

    public init(
        image: UIImage? = nil,
        layout: MWBackgroundImageLayout = MWBackgroundImageLayout()
    ) {
        self.image = image
        self.layout = layout
    }
}

public struct MWMainImageSettings: Equatable {
    public var image: UIImage?
    public var layout: MWCenteredObjectLayout

    public init(
        image: UIImage? = nil,
        layout: MWCenteredObjectLayout = MWCenteredObjectLayout()
    ) {
        self.image = image
        self.layout = layout
    }
}

// MARK: - Image layout

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
