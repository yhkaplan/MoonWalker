//
//  ParentViewController.swift
//  MoonWalker
//
//  Created by josh on 2018/06/20.
//

import UIKit

final class ParentViewController: UIViewController {

    // MARK: - Properties
    private var pageVC: UIPageViewController!
    private var dataSource: UIPageViewControllerDataSource!

    init(pageVC: UIPageViewController, dataSource: UIPageViewControllerDataSource) {
        super.init(nibName: nil, bundle: nil)

        self.pageVC = pageVC
        self.dataSource = dataSource
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("Not implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        embed(childVC: pageVC)
    }

}

// MARK: - Private methods

private extension ParentViewController {

    func addButtons() {}

}
