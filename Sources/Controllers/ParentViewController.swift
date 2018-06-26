//
//  ParentViewController.swift
//  MoonWalker
//
//  Created by josh on 2018/06/20.
//

import UIKit

final class ParentViewController: UIViewController {

    // MARK: - Properties
    private var coordinator: MoonWalkerCoordinator = MoonWalkerCoordinator()
    private var dataSource: UIPageViewControllerDataSource
    private let pageVC = UIPageViewController() //TODO: MoonWalkerPageViewController

    init(
        coordinator: MoonWalkerCoordinator,
        dataSource: UIPageViewControllerDataSource = MoonWalkerPageVCDataSource()
    ) {
        super.init(nibName: nil, bundle: nil)

        self.coordinator = coordinator
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("Not implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        setupPageVC()
    }

}

// MARK: - Private methods

private extension ParentViewController {

    func setupPageVC() {
        pageVC.dataSource = dataSource
        pageVC.setViewControllers(
            coordinator.childViewControllers,
            direction: .forward,
            animated: true, completion: nil
        )

        view.addSubviewWithConstraints(
            pageVC,
            leadingConstant: ,
            trailingConstant: ,
            topConstant: ,
            bottomConstant:
        )
    }

}
