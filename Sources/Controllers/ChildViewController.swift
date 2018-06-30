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

    var index = 0 //TODO: remove index from here?

    private var childViewModel = MWChildViewModel()
    private var viewSettings = WalkthroughViewSettings()

    init(
        childView: MWChildViewModel,
        index: Int,
        settings: WalkthroughViewSettings = WalkthroughViewSettings()
    ) {
        super.init(nibName: nil, bundle: nil)

        self.childViewModel = childView
        self.viewSettings = settings
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        childView = childViewModel.childView
        mainImage = childViewModel.mainImage
        backgroundImage = childViewModel.backgroundImage

        setupLabelText(childViewModel)
        setupLabelLayout()
    }

}

// MARK: - Private funcs

private extension ChildViewController {

    // MARK: - Label

    func setupLabelText(_ childViewModel: MWChildViewModel) {
        upperLabel.text = childViewModel.upperLabelText
        lowerLabel.text = childViewModel.lowerLabelText
    }

    func setupLabelLayout() {
        guard upperLabel.text != nil else { return }
        viewSettings.upperLabel.addChildViewToParent(childView: upperLabel, parentView: self.view)

        guard lowerLabel.text != nil else { return }
        viewSettings.lowerLabel.addChildViewToParent(childView: lowerLabel, parentView: self.view)
    }

}
