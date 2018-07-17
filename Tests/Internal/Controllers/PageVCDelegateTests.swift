//
//  PageVCDelegateTests.swift
//  MoonWalkerTests
//
//  Created by josh on 2018/07/17.
//

import Quick
import Nimble
@testable import MoonWalker

class PageVCDelegateTests: QuickSpec {

    override func spec() {

        describe("PageVCDelegate") {

            context("When pageViewController didFinishAnimating is called") {

                var sut: PageVCDelegate!
                var pageChangeDelegateMock: PageChangeDelegateMock!
                var pageVC: UIPageViewController!
                var randomIndex: Int!

                var childVC1: ChildViewController!
                var childVC2: ChildViewController!

                let randomNumberSeed = 999

                beforeEach {
                    sut = PageVCDelegate()

                    pageVC = UIPageViewController.default

                    randomIndex = Int(arc4random_uniform(UInt32(randomNumberSeed)))

                    pageChangeDelegateMock = PageChangeDelegateMock(index: randomNumberSeed)
                    sut.pageChangeDelegate = pageChangeDelegateMock

                    let viewModel = MWChildViewModel()
                    childVC1 = ChildViewController(childViewModel: viewModel, index: 0)
                    childVC2 = ChildViewController(childViewModel: viewModel, index: randomIndex)
                    let childVCs: [ChildViewController] = [childVC1, childVC2]

                    let dataSource = PageVCDataSource(childVCs: childVCs)

                    pageVC.setup(
                        with: childVCs,
                        dataSource: dataSource,
                        delegate: sut,
                        animated: false
                    )

                    pageVC.setViewControllers(
                        [childVC2],
                        direction: .forward,
                        animated: false
                    )
                }

                afterEach {
                    sut = nil
                    pageVC = nil

                    randomIndex = nil

                    pageChangeDelegateMock = nil
                    childVC1 = nil
                    childVC2 = nil
                }

                it("calls pageControlUpdateDelegate with the correct index") {
                    sut.pageViewController(
                        pageVC,
                        didFinishAnimating: true,
                        previousViewControllers: [childVC1],
                        transitionCompleted: true
                    )

                    let expected = randomIndex
                    let tested = pageChangeDelegateMock.index

                    expect(tested).to(equal(expected))
                }

                it("does not call pageControlUpdateDelegate when transition is not complete") {
                    sut.pageViewController(
                        pageVC,
                        didFinishAnimating: true,
                        previousViewControllers: [childVC1],
                        transitionCompleted: false
                    )

                    let expected = randomNumberSeed
                    let tested = pageChangeDelegateMock.index

                    expect(tested).to(equal(expected))
                }

            }
        }

    }

}

class PageChangeDelegateMock: PageChangeDelegate {
    var index: Int

    init(index: Int) {
        self.index = index
    }

    func pageDidChange(to index: Int) {
        self.index = index
    }
}
