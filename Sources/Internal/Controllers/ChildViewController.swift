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
        childViewModel: MWChildViewModel,
        index: Int
    ) {
        super.init(nibName: nil, bundle: nil)

        self.index = index
        self.viewModel = childViewModel
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // This is necessary to prevent background image etc from
        // extending beyond its bounds in iPhone X
        // https://github.com/hyperoslo/Pages/issues/48
        // TODO: This may be required in pageVC instead
        view.clipsToBounds = true

        setupLayout()
    }

}

// MARK: - Private funcs

private extension ChildViewController {

    func setupLayout() {//TODO: optimize these into procotol funcs

        if viewModel.backgroundImage.image != nil {
            let backgroundImage = UIImageView()
            backgroundImage.image = viewModel.backgroundImage.image
            backgroundImage.contentMode = viewModel.backgroundImage.contentMode
            viewModel.backgroundImage.layout.addChildViewToParent(childView: backgroundImage, parentView: view)
        }

        if viewModel.mainImage.image != nil {
            let mainImage = UIImageView()
            mainImage.image = viewModel.mainImage.image
            mainImage.contentMode = viewModel.mainImage.contentMode
            viewModel.mainImage.layout.addChildViewToParent(childView: mainImage, parentView: view)
        }

        if viewModel.lowerImage.image != nil {
            let lowerImage = UIImageView()
            lowerImage.image = viewModel.lowerImage.image
            lowerImage.contentMode = viewModel.lowerImage.contentMode
            viewModel.lowerImage.layout.addChildViewToParent(childView: lowerImage, parentView: view)
        }

        viewModel.childViewController.embed(in: self)

        if viewModel.upperLabel.text != nil {
            let upperLabel = UILabel()
            upperLabel.text = viewModel.upperLabel.text
            upperLabel.textSettings = viewModel.upperLabel.textSettings
            viewModel.upperLabel.layout.addChildViewToParent(childView: upperLabel, parentView: view)
        }

        if viewModel.lowerLabel.text != nil {
            let lowerLabel = UILabel()
            lowerLabel.text = viewModel.lowerLabel.text
            lowerLabel.textSettings = viewModel.lowerLabel.textSettings
            viewModel.lowerLabel.layout.addChildViewToParent(childView: lowerLabel, parentView: view)
        }

    }

}
