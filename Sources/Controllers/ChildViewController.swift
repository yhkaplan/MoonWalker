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

    var allLabels: [UILabel] = []

    var childView: UIView?
    var mainImage: UIImage?
    var backgroundImage: UIImage?

    private var walkthroughView = WalkthroughView()

    init(walkthroughView: WalkthroughView) {
        super.init(nibName: nil, bundle: nil)

        self.walkthroughView = walkthroughView
        allLabels = [upperLabel, lowerLabel]
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        childView = walkthroughView.childView
        mainImage = walkthroughView.mainImage
        backgroundImage = walkthroughView.backgroundImage

        setupLabelText(walkthroughView)
        setupLabelLayout()
    }

}

// MARK: - Private funcs

private extension ChildViewController {

    // MARK: - Label

    private func setupLabelText(_ walkthroughView: WalkthroughView) {
        upperLabel.text = walkthroughView.upperLabelText
        lowerLabel.text = walkthroughView.lowerLabelText
    }

    private func setupLabelLayout() {
        allLabels.forEach { label in
            view.addSubviewWithConstraints(
                label,
                leadingConstant: 0.0,
                trailingConstant: 0.0,
                topConstant: 0.0,
                bottomConstant: 0.0
            )
        }
    }

}
