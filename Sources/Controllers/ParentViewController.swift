//
//  ParentViewController.swift
//  MoonWalker
//
//  Created by josh on 2018/06/20.
//

import UIKit

final class ParentViewController: UIViewController {

    // MARK: - Properties
    private weak var dataSource: UIPageViewControllerDataSource?
    private var childWalkthroughVCs: [ChildViewController] = []
    private var pageVC = UIPageViewController() //TODO: MoonWalkerPageViewController

    init(
        childWalkthroughVCs: [ChildViewController], //TODO: change this to ViewSettings
        dataSource: UIPageViewControllerDataSource,
        pageVC: UIPageViewController = UIPageViewController()
    ) {
        super.init(nibName: nil, bundle: nil)

        self.childWalkthroughVCs = childWalkthroughVCs
        self.dataSource = dataSource
        self.pageVC = pageVC
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
        pageVC.setViewControllers( //TODO: MoonWalkerPageViewController will override this to require dataSource
            childWalkthroughVCs,
            direction: .forward,
            animated: true,
            completion: nil
        )

        embed(childVC: pageVC)
    }

}
