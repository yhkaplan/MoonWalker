//
//  ChildViewControllerTests.swift
//  MoonWalkerTests
//
//  Copyright © 2018 yhkaplan. All rights reserved.
//

import Quick
import Nimble
@testable import MoonWalker

class ChildViewControllerTests: QuickSpec {

    override func spec() {

        describe("viewDidLoad") {

            context("When the VC is loaded") {

                let upperLabelText = "upperTestyMcTestFace"
                let lowerLabelText = "lowerTestyMcTestFace"
                let childView = UIView()
                let mainImage = UIImage()
                let backgroundImage = UIImage()

                let walkView = WalkthroughChildView(
                    upperLabelText: upperLabelText,
                    lowerLabelText: lowerLabelText,
                    childView: childView,
                    mainImage: mainImage,
                    backgroundImage: backgroundImage
                )

                let walkthroughViewSettings = WalkthroughViewSettings(
                    upperLabelLeadingConstant: 20.45,
                    upperLabelTrailingConstant: 14.4,
                    upperLabelTopConstant: 53.54,
                    upperLabelHeight: 87.54
                )

                var sut: ChildViewController!

                beforeEach {
                    sut = ChildViewController(childView: walkView, settings: walkthroughViewSettings)
                    sut.preloadView()
                }

                afterEach {
                    sut = nil
                }

                it("upperLabelText is set") {
                    expect(sut.upperLabel.text).to(equal(upperLabelText))
                }

                it("lowerLabelText is set") {
                    expect(sut.lowerLabel.text).to(equal(lowerLabelText))
                }

                it("childView is set") {
                    expect(sut.childView).to(equal(childView))
                }

                it("mainImage image is set") {
                    expect(sut.mainImage).to(equal(mainImage))
                }

                it("backgroundImage image is set") {
                    expect(sut.backgroundImage).to(equal(backgroundImage))
                }
            }
        }
    }
}