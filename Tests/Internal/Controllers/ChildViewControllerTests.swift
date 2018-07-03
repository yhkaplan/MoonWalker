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
                    expect(sut.hasLabel(with: upperLabel.text)).to(beTrue())
                }

                it("lowerLabelText is set") {
                    expect(sut.hasLabel(with: lowerLabel.text)).to(beTrue())
                }

                it("childView is set") {
                    expect(sut.containsSubview(childUIView)).to(beTrue())
                }

                it("mainImage image is set") {
                    expect(sut.hasImage(with: mainUIImage)).to(beTrue())
                }

                it("backgroundImage image is set") {
                    expect(sut.hasImage(with: backgroundUIImage)).to(beTrue())
                }
            }
        }
    }
}
