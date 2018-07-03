//
//  MWChildViewLayoutSettings.swift
//  MoonWalker
//
//  Created by josh on 2018/06/20.
//

protocol SubviewAddable {
    func addChildViewToParent(childView: UIView, parentView: UIView)
}

protocol Label {
    associatedtype T: SubviewAddable //TODO: not clear if these constraints work

    var text: String? { get set }
    var layout: T { get set }
    var textSettings: TextSettings { get set }
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
 This struct is used to configure contain text, textSettings, and UpperLabelLayout
 for the upper label
 */
public struct UpperLabelSettings: Label {
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

public struct LowerLabelSettings: Label {
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

protocol RegularLayout {
    var leadingConstant: CGFloat { get set }
    var trailingConstant: CGFloat { get set }
    var bottomConstant: CGFloat { get set }
    var topConstant: CGFloat { get set }
}

extension SubviewAddable where Self: RegularLayout {
    func addChildViewToParent(childView: UIView, parentView: UIView) {
        parentView.addSubviewWithConstraints(
            childView,
            leadingConstant: leadingConstant,
            trailingConstant: trailingConstant,
            topConstant: topConstant,
            bottomConstant: bottomConstant
        )
    }
}

public struct CenteredObjectLayout: RegularLayout, SubviewAddable {
    var leadingConstant: CGFloat
    var trailingConstant: CGFloat
    var bottomConstant: CGFloat
    var topConstant: CGFloat

    public init(
        leadingConstant: CGFloat = 20.0,
        trailingConstant: CGFloat = -20.0,
        bottomConstant: CGFloat = -40.0,
        topConstant: CGFloat = 40.0
    ) {
        self.leadingConstant = leadingConstant
        self.trailingConstant = trailingConstant
        self.bottomConstant = bottomConstant
        self.topConstant = topConstant
    }
}

public struct BackgroundImageLayout: RegularLayout, SubviewAddable {
    var leadingConstant: CGFloat
    var trailingConstant: CGFloat
    var bottomConstant: CGFloat
    var topConstant: CGFloat

    public init(
        leadingConstant: CGFloat = 0.0,
        trailingConstant: CGFloat = 0.0,
        bottomConstant: CGFloat = -40.0,
        topConstant: CGFloat = 0.0
    ) {
        self.leadingConstant = leadingConstant
        self.trailingConstant = trailingConstant
        self.bottomConstant = bottomConstant
        self.topConstant = topConstant
    }
}

public struct MainImageSettings {
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

public struct BackgroundImageSettings {
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
