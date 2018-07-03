//
//  MWChildViewLayoutSettings.swift
//  MoonWalker
//
//  Created by josh on 2018/06/20.
//

protocol SubviewAddable {
    func addChildViewToParent(childView: UIView, parentView: UIView)
}

/**
 This struct represents the layout and appearance for your Walkthrough views
 */
public struct MWChildViewLayoutSettings { //TODO: delete this
    let upperLabelLayout: UpperLabelLayout
    let lowerLabelLayout: LowerLabelLayout

    public init(
        upperLabelLayout: UpperLabelLayout = UpperLabelLayout(),
        lowerLabelLayout: LowerLabelLayout = LowerLabelLayout()
    ) {
        self.upperLabelLayout = upperLabelLayout
        self.lowerLabelLayout = lowerLabelLayout
    }
}

// All labels will conform to this
protocol Label {
    associatedtype T: SubviewAddable

    var text: String? { get set }
    var layout: T { get set }
    var textSettings: TextSettings? { get set }
}

public struct TextSettings {
    public var font: UIFont
    public var color: UIColor

    public init(
        font: UIFont = UIFont.systemFont(ofSize: 18.0),
        color: UIColor = .black
    ) {
        self.font = font
        self.color = color
    }
}

/**
 This struct will contain text, textSettings, and UpperLabelLayout
 */
public struct UpperLabel: Label {
    public var text: String?
    public var layout: UpperLabelLayout
    public var textSettings: TextSettings?

    public init(
        text: String? = nil,
        layout: UpperLabelLayout = UpperLabelLayout(),
        textSettings: TextSettings? = nil
    ) {
        self.text = text
        self.layout = layout
        self.textSettings = textSettings
    }
}

public struct UpperLabelLayout {
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

public struct LowerLabelLayout {
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
