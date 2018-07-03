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

                let childUIView = UIView()
                let mainUIImage = UIImage()
                let backgroundUIImage = UIImage()

                let upperLabel = UpperLabelSettings(text: "upperTestyMcTestFace")
                let lowerLabel = LowerLabelSettings(text: "lowerTestyMcTestFace")

                let mainImage = MainImageSettings(image: mainUIImage)
                let backgroundImage = BackgroundImageSettings(image: backgroundUIImage)

                let childView = ChildView(view: childUIView)
                
                let viewModel = MWChildViewModel(
                    upperLabel: upperLabel,
                    lowerLabel: lowerLabel,
                    childView: childView,
                    mainImage: mainImage,
                    backgroundImage: backgroundImage
                )

                var sut: ChildViewController!

                beforeEach {
                    sut = ChildViewController(
                        childView: viewModel,
                        index: 0
                    )
                    sut.preloadView()
                }

                afterEach {
                    sut = nil
                }

                it("upperLabelText is set") {
                    expect(sut.upperLabel.text).to(equal(upperLabel.text))
                }

                it("lowerLabelText is set") {
                    expect(sut.lowerLabel.text).to(equal(lowerLabel.text))
                }

                it("childView is set") {
                    expect(sut.childView).to(equal(childUIView))
                }

                it("mainImage image is set") {
                    expect(sut.mainImage).to(equal(mainUIImage))
                }

                it("backgroundImage image is set") {
                    expect(sut.backgroundImage).to(equal(backgroundUIImage))
                }
            }
        }
    }
}
