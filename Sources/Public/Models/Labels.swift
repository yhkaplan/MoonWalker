//
//  Labels.swift
//  MoonWalker
//
//  Created by josh on 2018/07/09.
//

// MARK: - Protocol

protocol Label {
    associatedtype T: SubviewAddable //TODO: not clear if these constraints work

    var text: String? { get set }
    var layout: T { get set }
    var textSettings: TextSettings { get set }
}

// MARK: - LabelSettings

/**
 This struct is used to configure contain text, textSettings, and UpperLabelLayout
 for the upper label
 */
public struct UpperLabelSettings: Label, Equatable {
    public var text: String?
    public var layout: UpperLabelLayout
    public var textSettings: TextSettings

    public init(
        text: String? = nil,
        layout: UpperLabelLayout = UpperLabelLayout(),
        textSettings: TextSettings = TextSettings()
    ) {
        self.text = text
        self.layout = layout
        self.textSettings = textSettings
    }
}

public struct LowerLabelSettings: Label, Equatable {
    public var text: String?
    public var layout: LowerLabelLayout
    public var textSettings: TextSettings

    public init(
        text: String? = nil,
        layout: LowerLabelLayout = LowerLabelLayout(),
        textSettings: TextSettings = TextSettings()
    ) {
        self.text = text
        self.layout = layout
        self.textSettings = textSettings
    }
}

public struct TextSettings: Equatable {
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

extension UpperLabelLayout: SubviewAddable {

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

extension LowerLabelLayout: SubviewAddable {

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

public struct UpperLabelLayout: Equatable {
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

public struct LowerLabelLayout: Equatable {
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
