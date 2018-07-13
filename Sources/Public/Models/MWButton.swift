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
    // font
    //TODO: make labelColor, backgroundImage, and font into a struct called MWButtonTextSettings
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

public struct MWButtonLayout: Equatable {
    public var leading: CGFloat?
    public var trailing: CGFloat?
    public var bottom: CGFloat
    public var height: CGFloat
    public var width: CGFloat

    public init(
        leading: CGFloat? = nil,
        trailing: CGFloat? = nil,
        bottom: CGFloat = -20.0,
        height: CGFloat = 50.0,
        width: CGFloat = 100.0
    ) {
        self.leading = leading
        self.trailing = trailing
        self.bottom = bottom
        self.height = height
        self.width = width
    }
}

enum ButtonOrientation {
    case left(leading: CGFloat)
    case right(trailing: CGFloat)
}

extension MWButtonLayout {
    var buttonOrientation: ButtonOrientation? {
        if let leading = leading {
            return .left(leading: leading)
        } else if let trailing = trailing {
            return .right(trailing: trailing)
        }

        return nil
    }

    func addChildViewToParent(childView: UIView, parentView: UIView) {
        guard let buttonOrientation = buttonOrientation else {
            assertionFailure("Neither trailing nor leading are set")
            return
        }

        switch buttonOrientation {
        case .left(let leading):
            parentView.addSubviewWithConstraints(
                childView,
                height: height,
                width: width,
                leadingConstant: leading,
                bottomConstant: bottom
            )

        case .right(let trailing):
            parentView.addSubviewWithConstraints(
                childView,
                height: height,
                width: width,
                trailingConstant: trailing,
                bottomConstant: bottom
            )
        }
    }
}
