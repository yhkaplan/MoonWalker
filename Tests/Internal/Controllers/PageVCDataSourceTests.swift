//
//  PageVCDataSourceTests.swift
//  MoonWalkerTests
//
//  Created by Joshua Kaplan on 2018/07/01.
//

import Quick
import Nimble
@testable import MoonWalker

class PageVCDataSourceTests: QuickSpec {

    override func spec() {

        describe("PageVCDataSource") {

            context("protocol funcs return proper values") {

                var sut: PageVCDataSource!
                var pageViewController: UIPageViewController!
                var childViewControllers: [ChildViewController]!

                beforeEach {
                    setupChildViewControllers()
                    pageViewController = UIPageViewController.default
                    sut = PageVCDataSource(childVCs: childViewControllers)
                }

                afterEach {
                    childViewControllers = nil
                    pageViewController = nil
                    sut = nil
                }

                context("pageViewControllerBefore") {

                    it("returns previous value in normal case") {
                        let expectedIndex = 0
                        let expected = childViewControllers[expectedIndex]

                        let childVC = childViewControllers[expectedIndex + 1]

                        guard let tested = sut.pageViewController(
                            pageViewController,
                            viewControllerBefore: childVC
                        ) as? ChildViewController else {
                            fail(); return
                        }

                        expect(tested) == expected
                    }

                    it("returns final index when first index") {
                        let expectedIndex = 2
                        let expected = childViewControllers[expectedIndex]

                        let childVC = childViewControllers[0]

                        guard let tested = sut.pageViewController(
                            pageViewController,
                            viewControllerBefore: childVC
                        ) as? ChildViewController else {
                            fail(); return
                        }

                        expect(tested) == expected
                    }

                    it("returns nil when view controller not childVC") {
                        let tested: UIViewController? = sut.pageViewController(
                            pageViewController,
                            viewControllerBefore: UIPageViewController()
                        )

                        expect(tested).to(beNil())
                    }

                }

                context("pageViewControllerBefore") {

                    it("returns next value") {
                        let expectedIndex = 1
                        let expected = childViewControllers[expectedIndex]

                        let childVC = childViewControllers[expectedIndex - 1]

                        guard let tested = sut.pageViewController(
                            pageViewController,
                            viewControllerAfter: childVC
                        ) as? ChildViewController else {
                            fail(); return
                        }

                        expect(tested) == expected
                    }

                    it("returns start index when final index") {
                        let expectedIndex = 0
                        let expected = childViewControllers[expectedIndex]

                        let childVC = childViewControllers[2]

                        guard let tested = sut.pageViewController(
                            pageViewController,
                            viewControllerAfter: childVC
                        ) as? ChildViewController else {
                            fail(); return
                        }

                        expect(tested) == expected
                    }

                    it("returns nil when view controller not childVC") {
                        let tested: UIViewController? = sut.pageViewController(
                            pageViewController,
                            viewControllerAfter: UIPageViewController()
                        )

                        expect(tested).to(beNil())
                    }

                }

                context("viewControllerCount") {

                    it("returns correct count") {
                        let expected = childViewControllers.count
                        let tested = sut.viewControllerCount

                        expect(tested) == expected
                    }

                }

                context("presentationIndex") {

                    it("returns correct value") {
                        let expected = 1
                        let childVC = childViewControllers[expected]
                        setVisibleViewController(to: [childVC])

                        let tested = sut.presentationIndex(for: pageViewController)

                        expect(tested) == expected
                    }

                    it("returns zero when childViewControllers array is empty") {
                        let expected = 0
                        setVisibleViewController(to: [UIViewController()])

                        let tested = sut.presentationIndex(for: pageViewController)

                        expect(tested) == expected
                    }

                }

                context("isLastPage") {

                    it("returns true for last page") {
                        guard let lastVC = childViewControllers.last else {
                            fail(); return
                        }
                        setVisibleViewController(to: [lastVC])

                        let tested = sut.isLastPage(for: pageViewController)

                        expect(tested).to(beTrue())
                    }

                    it("returns true for zero length") {
                        // calling setViewControllers() with zero length array
                        // causes exception so instead no setup is necessary for
                        // pageViewController
                        let emptySUT = PageVCDataSource(childVCs: [])

                        let tested = emptySUT.isLastPage(for: pageViewController)

                        expect(tested).to(beTrue())
                    }

                    it("returns false for first page") {
                        guard let firstVC = childViewControllers.first else {
                            fail(); return
                        }
                        setVisibleViewController(to: [firstVC])

                        let tested = sut.isLastPage(for: pageViewController)

                        expect(tested).to(beFalse())
                    }
                }

                // MARK: - Helper funcs //TODO: lookup best place for these in case of Quick and Nimble

                func setupChildViewControllers() {
                    childViewControllers = [0, 1, 2].map { index -> ChildViewController in
                        ChildViewController(
                            childViewModel: MWChildViewModel(),
                            index: index
                        )
                    }
                }

                func setVisibleViewController(to viewControllers: [UIViewController]) {
                    pageViewController.setViewControllers(
                        viewControllers,
                        direction: .forward,
                        animated: false
                    )
                }
            }

        }
    }
}
