//
//  MWLabels.swift
//  MoonWalker
//
//  Created by josh on 2018/07/09.
//

// MARK: - Protocol

protocol Label {
    associatedtype T: SubviewAddable //TODO: not clear if these constraints work

    var text: String? { get set }
    var layout: T { get set }
    var textSettings: MWTextSettings { get set }
}

// MARK: - LabelSettings

/**
 This struct is used to configure contain text, textSettings, and MWUpperLabelLayout
 for the upper label
 */
public struct MWUpperLabelSettings: Label, Equatable {
    public var text: String?
    public var layout: MWUpperLabelLayout
    public var textSettings: MWTextSettings

    public init(
        text: String? = nil,
        layout: MWUpperLabelLayout = MWUpperLabelLayout(),
        textSettings: MWTextSettings = MWTextSettings()
    ) {
        self.text = text
        self.layout = layout
        self.textSettings = textSettings
    }
}

public struct MWLowerLabelSettings: Label, Equatable {
    public var text: String?
    public var layout: MWLowerLabelLayout
    public var textSettings: MWTextSettings

    public init(
        text: String? = nil,
        layout: MWLowerLabelLayout = MWLowerLabelLayout(),
        textSettings: MWTextSettings = MWTextSettings()
    ) {
        self.text = text
        self.layout = layout
        self.textSettings = textSettings
    }
}

public struct MWTextSettings: Equatable {
    public var font: UIFont
    public var color: UIColor
    public var textAlignment: NSTextAlignment

    public init(
        font: UIFont = UIFont.systemFont(ofSize: 18.0),
        color: UIColor = .black,
        textAlignment: NSTextAlignment = .center
    ) {
        self.font = font
        self.color = color
        self.textAlignment = textAlignment
    }
}

// MARK: - SubviewAddable conformance

extension MWUpperLabelLayout: SubviewAddable {

    func addChildViewToParent(childView: UIView, parentView: UIView) {
        parentView.addSubviewWithConstraints(
            childView,
            height: height,
            leadingConstant: leadingConstant,
            trailingConstant: trailingConstant,
            topConstant: topConstant
        )
    }

}

extension MWLowerLabelLayout: SubviewAddable {

    func addChildViewToParent(childView: UIView, parentView: UIView) {
        parentView.addSubviewWithConstraints(
            childView,
            height: height,
            leadingConstant: leadingConstant,
            trailingConstant: trailingConstant,
            bottomConstant: bottomConstant
        )
    }

}

// MARK: - Layout

public struct MWUpperLabelLayout: Equatable {
    let leadingConstant: CGFloat
    let trailingConstant: CGFloat
    let topConstant: CGFloat
    let height: CGFloat

    public init(
        leadingConstant: CGFloat = 20.0,
        trailingConstant: CGFloat = -20.0,
        topConstant: CGFloat = 20.0,
        height: CGFloat = 40.0
    ) {
        self.leadingConstant = leadingConstant
        self.trailingConstant = trailingConstant
        self.topConstant = topConstant
        self.height = height
    }
}

public struct MWLowerLabelLayout: Equatable {
    let leadingConstant: CGFloat
    let trailingConstant: CGFloat
    let bottomConstant: CGFloat
    let height: CGFloat

    public init(
        leadingConstant: CGFloat = 20.0,
        trailingConstant: CGFloat = -20.0,
        bottomConstant: CGFloat = -20.0,
        height: CGFloat = 40.0
    ) {
        self.leadingConstant = leadingConstant
        self.trailingConstant = trailingConstant
        self.bottomConstant = bottomConstant
        self.height = height
    }
}
