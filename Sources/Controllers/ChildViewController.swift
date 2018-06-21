//
//  ChildViewController.swift
//  MoonWalker
//
//  Created by josh on 2018/06/20.
//

import UIKit

final class ChildViewController: UIViewController {

    let upperLabel = UILabel() //TODO: set all as lazy?
    let lowerLabel = UILabel()

    var childView: UIView?
    var mainImage: UIImage?
    var backgroundImage: UIImage?

    private var walkthroughChildView = WalkthroughChildView()
    private var walkthroughViewSettings = WalkthroughViewSettings()

    init(
        childView: WalkthroughChildView,
        settings: WalkthroughViewSettings = WalkthroughViewSettings()
    ) {
        super.init(nibName: nil, bundle: nil)

        self.walkthroughChildView = childView
        self.walkthroughViewSettings = settings
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        childView = walkthroughChildView.childView
        mainImage = walkthroughChildView.mainImage
        backgroundImage = walkthroughChildView.backgroundImage

        setupLabelText(walkthroughChildView)
        setupLabelLayout()
    }

}

// MARK: - Private funcs

private extension ChildViewController {

    // MARK: - Label

    private func setupLabelText(_ walkthroughChildView: WalkthroughChildView) {
        upperLabel.text = walkthroughChildView.upperLabelText
        lowerLabel.text = walkthroughChildView.lowerLabelText
    }

    private func setupLabelLayout() {
        if upperLabel.text != nil {
            view.addSubviewWithConstraints(
                upperLabel,
                height: walkthroughViewSettings.upperLabelHeight,
                leadingConstant: walkthroughViewSettings.upperLabelLeadingConstant,
                trailingConstant: walkthroughViewSettings.upperLabelTrailingConstant,
                topConstant: walkthroughViewSettings.upperLabelTopConstant
            )
        }
    }

}
