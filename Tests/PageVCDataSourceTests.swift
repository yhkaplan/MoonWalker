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
                // Properties
                var sut: PageVCDataSource!
                var pageViewController: UIPageViewController!
                var childViewControllers: [ChildViewController]!
                
                beforeEach {
                    setupChildViewControllers()
                    setupPageViewController() //TODO: may need to set initial page
                    sut = PageVCDataSource(childVCs: childViewControllers)
                }
                
                afterEach {
                    sut = nil
                    childViewControllers = nil
                }
                
                it("pageViewControllerBefore returns previous value") {
                    let expectedIndex = 0
                    let expected = childViewControllers[expectedIndex]
                    
                    let childVC = childViewControllers[expectedIndex + 1]
                    
                    guard let tested = sut.pageViewController(
                        pageViewController,
                        viewControllerBefore: childVC
                    ) as? ChildViewController else {
                        fail(); return
                    }
                    
                    expect(tested).to(equal(expected))
                }
                
                func setupChildViewControllers() {
                    childViewControllers = [0, 1, 2].map { index -> ChildViewController in
                        return ChildViewController(
                            childView: MWChildViewModel(),
                            index: index
                        )
                    }
                }
                
                func setupPageViewController() {
                    pageViewController = UIPageViewController(
                        transitionStyle: .scroll,
                        navigationOrientation: .horizontal,
                        options: nil
                    )
                }
            }
            
        }
        
    }
    
}
