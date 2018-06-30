//
//  ParentViewController.swift
//  MoonWalker
//
//  Created by josh on 2018/06/20.
//

import UIKit

final class ParentViewController: UIViewController {

    // MARK: - Properties
    private var pageVC: UIPageViewController! //TODO: MoonWalkerPageViewController

    init(pageVC: UIPageViewController) {
        super.init(nibName: nil, bundle: nil)

        self.pageVC = pageVC
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("Not implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        embed(childVC: pageVC)
    }

}

// MARK: - Private methods

private extension ParentViewController {

    func addButtons() {}
    
}
