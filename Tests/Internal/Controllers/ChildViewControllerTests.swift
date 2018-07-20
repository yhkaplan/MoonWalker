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

        describe("When the VC is loaded") {

            context("Upper Label") {

               let upperLabelTextSettings = TextSettings(
                    font: UIFont.boldSystemFont(ofSize: 28.2),
                    color: .green,
                    textAlignment: .left
                )

                let upperLabel = UpperLabelSettings(
                    text: "upperTestyMcTestFace",
                    textSettings: upperLabelTextSettings
                )

                let viewModel = MWChildViewModel(upperLabel: upperLabel)

                var childViewController: ChildViewController!

                beforeEach {
                    childViewController = ChildViewController(
                        childViewModel: viewModel,
                        index: 0
                    )
                    childViewController.preloadView()
                }

                afterEach {
                    childViewController = nil
                }

                it("has text set") {
                    expect(childViewController.getLabelWithText(upperLabel.text)).toNot(beNil())
                }

                it("has all textSetting properties set") {
                    guard let label = childViewController.getLabelWithText(upperLabel.text) else {
                        fail(); return
                    }

                    expect(label.textSettings).to(equal(upperLabel.textSettings))
                }

            }

            context("Lower Label") {

               let lowerLabelTextSettings = TextSettings(
                    font: UIFont.boldSystemFont(ofSize: 28.2),
                    color: .green,
                    textAlignment: .left
                )

                let lowerLabel = LowerLabelSettings(
                    text: "lowerTestyMcTestFace",
                    textSettings: lowerLabelTextSettings
                )

                let viewModel = MWChildViewModel(lowerLabel: lowerLabel)

                var childViewController: ChildViewController!

                beforeEach {
                    childViewController = ChildViewController(
                        childViewModel: viewModel,
                        index: 0
                    )
                    childViewController.preloadView()
                }

                afterEach {
                    childViewController = nil
                }

                it("has text set") {
                    expect(childViewController.getLabelWithText(lowerLabel.text)).toNot(beNil())
                }

                it("has all textSetting properties set") {
                    guard let label = childViewController.getLabelWithText(lowerLabel.text) else {
                        fail(); return
                    }

                    expect(label.textSettings).to(equal(lowerLabel.textSettings))
                }
            }

            context("UIView and images") {

                let childUIViewController = UIViewController()
                let mainUIImage = UIImage()
                let backgroundUIImage = UIImage()

                let mainImage = MainImageSettings(image: mainUIImage)
                let backgroundImage = BackgroundImageSettings(image: backgroundUIImage)

                let childView = MWChildViewController(viewController: childUIViewController)

                let viewModel = MWChildViewModel(
                    childViewController: childView,
                    mainImage: mainImage,
                    backgroundImage: backgroundImage
                )

                var childViewController: ChildViewController!

                beforeEach {
                    childViewController = ChildViewController(
                        childViewModel: viewModel,
                        index: 0
                    )
                    childViewController.preloadView()
                }

                afterEach {
                    childViewController = nil
                }

                it("mainImage image is set") {
                    expect(childViewController.hasImage(with: mainUIImage)).to(beTrue())
                }

                it("backgroundImage image is set") {
                    expect(childViewController.hasImage(with: backgroundUIImage)).to(beTrue())
                }
            }

        }
    }
}
