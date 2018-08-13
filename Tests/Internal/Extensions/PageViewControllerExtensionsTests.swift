//
//  PageViewControllerExtensionsTests.swift
//  MoonWalkerTests
//
//  Created by josh on 2018/07/20.
//

import Quick
import Nimble
@testable import MoonWalker

class PageViewControllerExtensionsTests: QuickSpec {

    override func spec() {

        describe("PageViewController extensions") {

            var sut: UIPageViewController!

            beforeEach {
                sut = UIPageViewController.default
            }

            afterEach {
                sut = nil
            }

            context("When default is initialized") {

                it("has navigationOrientation set properly") {
                    let tested = sut.navigationOrientation
                    let expected = UIPageViewControllerNavigationOrientation.horizontal

                    expect(tested) == expected
                }

                it("has transitionStyle set properly") {
                    let tested = sut.transitionStyle
                    let expected = UIPageViewControllerTransitionStyle.scroll

                    expect(tested) == expected
                }

            }

            context("When setup is called") {

                let childVC = ChildViewController(childViewModel: MWChildViewModel(), index: 0)
                let viewControllers: [ChildViewController] = [childVC, childVC]
                let dataSource = PageVCDataSource(childVCs: viewControllers)
                let delegate = PageVCDelegate()

                it("sets only the first childVC") {
                    guard let firstVC = viewControllers.first else {
                        fail(); return
                    }
                    let expected = [firstVC]

                    sut.setup(with: expected, dataSource: dataSource, delegate: delegate)
                    let tested = sut.viewControllers

                    expect(tested) == expected
                }

                it("sets dataSource") {
                    let expected = dataSource

                    sut.setup(with: viewControllers, dataSource: expected, delegate: delegate)
                    guard let tested = sut.dataSource as? PageVCDataSource else {
                        fail(); return
                    }

                    expect(tested) == expected
                }

                it("sets delegate") {
                    let expected = delegate

                    sut.setup(with: viewControllers, dataSource: dataSource, delegate: expected)
                    guard let tested = sut.delegate as? PageVCDelegate else {
                        fail(); return
                    }

                    expect(tested) == expected
                }
            }

            context("When setInitialViewController is called") {

                let childVC = ChildViewController(childViewModel: MWChildViewModel(), index: 0)
                let viewControllers: [ChildViewController] = [childVC, childVC]

                it("sets only the first childVC") {
                    guard let firstVC = viewControllers.first else {
                        fail(); return
                    }
                    let expected = [firstVC]

                    sut.setInitialViewController(from: viewControllers, animated: false)
                    let tested = sut.viewControllers

                    expect(tested) == expected
                }
            }
        }
    }
}
