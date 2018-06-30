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

                let walkView = MWChildViewModel(
                    upperLabelText: upperLabelText,
                    lowerLabelText: lowerLabelText,
                    childView: childView,
                    mainImage: mainImage,
                    backgroundImage: backgroundImage
                )

                let upperLabelSettings = UpperLabel(
                    leadingConstant: 20.45,
                    trailingConstant: 14.4,
                    topConstant: 53.54,
                    height: 87.54
                )
                
                let childViewLayoutSettings = MWChildViewLayoutSettings(
                    upperLabel: upperLabelSettings
                )

                var sut: ChildViewController!

                beforeEach {
                    sut = ChildViewController(
                        childView: walkView,
                        index: 0,
                        settings: childViewLayoutSettings
                    )
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
