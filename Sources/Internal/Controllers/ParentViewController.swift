//
//  ParentViewController.swift
//  MoonWalker
//
//  Created by josh on 2018/06/20.
//

import UIKit

final class ParentViewController: UIViewController {

    // MARK: - Properties
    private var pageVC = UIPageViewController()
    private var dataSource: UIPageViewControllerDataSource!
    private var viewModel = MWParentViewModel()

    init(
        pageVC: UIPageViewController,
        dataSource: UIPageViewControllerDataSource,
        viewModel: MWParentViewModel = MWParentViewModel()
    ) {
        super.init(nibName: nil, bundle: nil)

        self.pageVC = pageVC
        self.dataSource = dataSource
        self.viewModel = viewModel
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("Not implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        embed(childVC: pageVC)
        addButtons()
    }

}

// MARK: - Private methods

private extension ParentViewController {

    func addButtons() {
        [viewModel.leftButton, viewModel.rightButton]
            .compactMap { $0 }
            .forEach { buttonModel in
                let button = UIButton()
                button.setTitle(buttonModel.label, for: .normal)
                //set image, etc
                buttonModel.layout.addChildViewToParent(childView: button, parentView: view)
            }
    }

}
