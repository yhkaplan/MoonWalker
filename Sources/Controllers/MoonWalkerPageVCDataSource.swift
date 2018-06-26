//
//  MoonWalkerPageVCDataSource.swift
//  MoonWalker
//
//  Created by josh on 2018/06/26.
//

class MoonWalkerPageVCDataSource: NSObject, UIPageViewControllerDataSource {

    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {

    }

    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {

    }

    func presentationCount(for pageViewController: UIPageViewController) -> Int {

    }

    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        return 0 //TODO: defaults to zero?
    }

}
