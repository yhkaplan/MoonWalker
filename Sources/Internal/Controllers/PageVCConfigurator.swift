//
//  PageVCConfigurator.swift
//  MoonWalker
//
//  Created by josh on 2018/07/02.
//

// This struct is resposible for configuring UIPageViewController
struct PageVCConfigurator {

    let pageViewController: UIPageViewController

    func setDataSource(_ dataSource: UIPageViewControllerDataSource?) {
        pageViewController.dataSource = dataSource
    }

    func setInitialChildViewController(to initiallyVisableVC: ChildViewController) {
        pageViewController.setViewControllers(
            [initiallyVisableVC],
            direction: .forward,
            animated: true
        )
    }

}
