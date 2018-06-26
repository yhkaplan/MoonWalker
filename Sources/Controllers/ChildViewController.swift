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
    private var viewSettings = WalkthroughViewSettings()

    init(
        childView: WalkthroughChildView,
        settings: WalkthroughViewSettings = WalkthroughViewSettings()
    ) {
        super.init(nibName: nil, bundle: nil)

        self.walkthroughChildView = childView
        self.viewSettings = settings
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

    func setupLabelText(_ walkthroughChildView: WalkthroughChildView) {
        upperLabel.text = walkthroughChildView.upperLabelText
        lowerLabel.text = walkthroughChildView.lowerLabelText
    }

    func setupLabelLayout() {
        guard upperLabel.text != nil else { return }
        viewSettings.upperLabel.addChildViewToParent(childView: upperLabel, parentView: self.view)

        guard lowerLabel.text != nil else { return }
        viewSettings.lowerLabel.addChildViewToParent(childView: lowerLabel, parentView: self.view)
    }

}
