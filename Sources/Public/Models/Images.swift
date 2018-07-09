//
//  Images.swift
//  MoonWalker
//
//  Created by josh on 2018/07/09.
//

// MARK: - Image types

public struct BackgroundImageSettings: Equatable {
    public var image: UIImage?
    public var layout: BackgroundImageLayout

    public init(
        image: UIImage? = nil,
        layout: BackgroundImageLayout = BackgroundImageLayout()
    ) {
        self.image = image
        self.layout = layout
    }
}

public struct MainImageSettings: Equatable {
    public var image: UIImage?
    public var layout: CenteredObjectLayout

    public init(
        image: UIImage? = nil,
        layout: CenteredObjectLayout = CenteredObjectLayout()
    ) {
        self.image = image
        self.layout = layout
    }
}

// MARK: - Image layout

public struct BackgroundImageLayout: RegularLayout, SubviewAddable, Equatable {
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
