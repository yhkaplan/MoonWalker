//
//  MWChildViewLayoutSettings.swift
//  MoonWalker
//
//  Created by josh on 2018/06/20.
//

protocol SubviewAddable {
    func addChildViewToParent(childView: UIView, parentView: UIView)
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

public struct MWCenteredObjectLayout: RegularLayout, SubviewAddable, Equatable {
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

