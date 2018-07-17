//
//  ParentViewControllerTests.swift
//  MoonWalkerTests
//
//  Created by Joshua Kaplan on 2018/07/01.
//

import Quick
import Nimble
@testable import MoonWalker

class ParentViewControllerTests: QuickSpec {
    
    override func spec() {
        
        describe("ParentViewController") {
            
            context("When the VC is loaded") {
            
                let pageViewController = UIPageViewController(
                    nibName: nil,
                    bundle: nil
                )
                
                let childVCs: [ChildViewController] = []
                let dataSource = PageVCDataSource(childVCs: childVCs)
                let delegate = PageVCDelegate()

                let sut = ParentViewController(
                    pageVC: pageViewController,
                    dataSource: dataSource,
                    delegate: delegate
                )
                
                it("sets childVC view as a subview") {
                    sut.preloadView()
                    // Make sure subviews are layed out here
                    
                    let expected = pageViewController.view
                    let subview = sut.view.subviews
                        .filter { $0 == expected }
                        .first

                    guard let tested = subview else { fail(); return }

                    expect(tested).to(equal(expected))
                }
                
            }
            
        }
        
    }
}
