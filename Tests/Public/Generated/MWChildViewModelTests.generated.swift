// Generated using Sourcery 0.13.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// MARK: - MWChildViewModelTests

import Quick
import Nimble
@testable import MoonWalker

class MWChildViewModelTests: QuickSpec {

    override func spec() {

        describe("MWChildViewModelTests") {

            let upperLabel = UpperLabelSettings()
            let lowerLabel = LowerLabelSettings()
            let childView = UIView()
            let mainImage = UIImage()
            let backgroundImage = UIImage()

            let sut = MWChildViewModel(
                upperLabel: upperLabel, lowerLabel: lowerLabel, childView: childView, mainImage: mainImage, backgroundImage: backgroundImage
            )

            it("upperLabel is set") {
                let expected = upperLabel
                let tested = sut.upperLabel

                expect(tested).to(equal(expected))
            }

            it("lowerLabel is set") {
                let expected = lowerLabel
                let tested = sut.lowerLabel

                expect(tested).to(equal(expected))
            }

            it("childView is set") {
                let expected = childView
                let tested = sut.childView

                expect(tested).to(equal(expected))
            }

            it("mainImage is set") {
                let expected = mainImage
                let tested = sut.mainImage

                expect(tested).to(equal(expected))
            }

            it("backgroundImage is set") {
                let expected = backgroundImage
                let tested = sut.backgroundImage

                expect(tested).to(equal(expected))
            }

        }
    }
}
