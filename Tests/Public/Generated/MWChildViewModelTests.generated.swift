// Generated using Sourcery 0.14.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// MARK: - MWChildViewModelTests

import Nimble
import Quick
@testable import MoonWalker

class MWChildViewModelTests: QuickSpec {

    override func spec() {

        describe("MWChildViewModelTests") {

            let upperLabel = MWUpperLabel()
            let lowerLabel = MWLowerLabel()
            let childViewController = MWChildViewController()
            let mainImage = MWMainImage()
            let lowerImage = MWLowerImage()
            let backgroundImage = MWBackgroundImage()

            let sut = MWChildViewModel(
                upperLabel: upperLabel, lowerLabel: lowerLabel, childViewController: childViewController, mainImage: mainImage, lowerImage: lowerImage, backgroundImage: backgroundImage
            )

            it("upperLabel is set") {
                let expected = upperLabel
                let tested = sut.upperLabel

                expect(tested) == expected
            }

            it("lowerLabel is set") {
                let expected = lowerLabel
                let tested = sut.lowerLabel

                expect(tested) == expected
            }

            it("childViewController is set") {
                let expected = childViewController
                let tested = sut.childViewController

                expect(tested) == expected
            }

            it("mainImage is set") {
                let expected = mainImage
                let tested = sut.mainImage

                expect(tested) == expected
            }

            it("lowerImage is set") {
                let expected = lowerImage
                let tested = sut.lowerImage

                expect(tested) == expected
            }

            it("backgroundImage is set") {
                let expected = backgroundImage
                let tested = sut.backgroundImage

                expect(tested) == expected
            }

        }
    }
}
