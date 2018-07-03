//
//  ChildViewController.swift
//  MoonWalker
//
//  Created by josh on 2018/06/20.
//

import UIKit

final class ChildViewController: UIViewController {

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

        setupLayout()
    }

}

// MARK: - Private funcs

private extension ChildViewController {

    func setupLayout() {//TODO: optimize these into procotol funcs

        if viewModel.backgroundImage.image != nil {
            let backgroundImage = UIImageView()
            backgroundImage.image = viewModel.backgroundImage.image
            viewModel.mainImage.layout.addChildViewToParent(childView: backgroundImage, parentView: self.view)
        }

        if viewModel.mainImage.image != nil {
            let mainImage = UIImageView()
            mainImage.image = viewModel.mainImage.image
            viewModel.mainImage.layout.addChildViewToParent(childView: mainImage, parentView: self.view)
        }

        if let view = viewModel.childView.view {
            viewModel.childView.layout.addChildViewToParent(childView: view, parentView: self.view)
        }

        if viewModel.upperLabel.text != nil {
            let upperLabel = UILabel()
            upperLabel.text = viewModel.upperLabel.text
            viewModel.upperLabel.layout.addChildViewToParent(childView: upperLabel, parentView: self.view)
        }

        if viewModel.lowerLabel.text != nil {
            let lowerLabel = UILabel()
            lowerLabel.text = viewModel.lowerLabel.text
            viewModel.lowerLabel.layout.addChildViewToParent(childView: lowerLabel, parentView: self.view)
        }

    }

}
