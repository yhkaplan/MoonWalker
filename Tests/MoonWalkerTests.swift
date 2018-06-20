//
//  MoonWalkerTests.swift
//  MoonWalkerTests
//
//  Copyright © 2018 yhkaplan. All rights reserved.
//

import Quick
import Nimble
@testable import MoonWalker

class ChildViewControllerTests: QuickSpec {

    override func spec() {
        describe("WalkthroughView") {

            let upperLabelText = "upperTestyMcTestFace"
            let lowerLabelText = "lowerTestyMcTestFace"
            let childView = UIView()
            let mainImage = UIImage()
            let backgroundImage = UIImage()

            let walkView = WalkthroughView(
                upperLabelText: upperLabelText,
                lowerLabelText: lowerLabelText,
                childView: childView,
                mainImage: mainImage,
                backgroundImage: backgroundImage
            )

            let childVC = ChildViewController(walkthoughView: walkView)

            context("All WalkthroughView properties are set") {

                it("has upperLabelText set") {
                    expect(childVC.upperLabel.text).to(equal(upperLabelText))
                }

                it("has lowerLabelText set") {
                    expect(childVC.lowerLabel.text).to(equal(lowerLabelText))
                }

                it("has childView set") {
                    expect(childVC.childView).to(equal(childView))
                }

                it("has mainImage set") {
                    expect(childVC.mainImage).to(equal(mainImage))
                }

                it("has backgroundImage set") {
                    expect(childVC.backgroundImage).to(equal(backgroundImage))
                }

            }
        }
    }
}
