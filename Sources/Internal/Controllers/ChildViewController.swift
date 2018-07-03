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

    var index: Int!

    private var viewModel = MWChildViewModel()

    init(
        childView: MWChildViewModel,
        index: Int
    ) {
        super.init(nibName: nil, bundle: nil)

        self.index = index
        self.viewModel = childView
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        childView = viewModel.childView
        mainImage = viewModel.mainImage
        backgroundImage = viewModel.backgroundImage

        setupLabelText(viewModel)
        setupLabelLayout()
    }

}

// MARK: - Private funcs

private extension ChildViewController {

    // MARK: - Label

    func setupLabelText(_ viewModel: MWChildViewModel) {
        upperLabel.text = viewModel.upperLabel.text
        lowerLabel.text = viewModel.lowerLabel.text
    }

    func setupLabelLayout() {
        guard upperLabel.text != nil else { return }
        viewModel.upperLabel.layout.addChildViewToParent(childView: upperLabel, parentView: self.view)

        guard lowerLabel.text != nil else { return }
        viewModel.lowerLabel.layout.addChildViewToParent(childView: lowerLabel, parentView: self.view)
    }

}
