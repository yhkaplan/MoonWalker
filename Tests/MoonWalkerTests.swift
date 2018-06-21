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
        describe("ChildViewController") {

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

            let sut = ChildViewController(childView: walkView, settings: walkthroughViewSettings)

            sut.preloadView()

            context("Labels images and views are set") {

                it("has upperLabelText set") {
                    expect(sut.upperLabel.text).to(equal(upperLabelText))
                }

                it("has lowerLabelText set") {
                    expect(sut.lowerLabel.text).to(equal(lowerLabelText))
                }

                it("has childView set") {
                    expect(sut.childView).to(equal(childView))
                }

                it("has mainImage set") {
                    expect(sut.mainImage).to(equal(mainImage))
                }

                it("has backgroundImage set") {
                    expect(sut.backgroundImage).to(equal(backgroundImage))
                }

            }

            context("Labels images and views are layed out") {

                it("upperLabel height layed out") {
                    expect(sut.upperLabel.frame.height).to(equal(walkthroughViewSettings.upperLabelHeight))
                }

                //TODO: using leading so this will fail w/ right to left layouts
                it("upperLabel leadingConstant layed out") {
                    expect(sut.upperLabel.frame.minX).to(equal(walkthroughViewSettings.upperLabelLeadingConstant))
                }
            }
        }
    }
}
