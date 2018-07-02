// Generated using Sourcery 0.13.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// MARK: - MWChildViewModelTests

import Quick
import Nimble
@testable import MoonWalker

class MWChildViewModelTests: QuickSpec {

    override func spec() {

        describe("MWChildViewModelTests") {

            let upperLabelText = "test upperLabelText"
            let lowerLabelText = "test lowerLabelText"
            let childView = UIView()
            let mainImage = UIImage()
            let backgroundImage = UIImage()

            let sut = MWChildViewModel(
                upperLabelText: upperLabelText, lowerLabelText: lowerLabelText, childView: childView, mainImage: mainImage, backgroundImage: backgroundImage
            )

            it("upperLabelText is set") {
                let expected = upperLabelText
                let tested = sut.upperLabelText

                expect(tested).to(equal(expected))
            }

            it("lowerLabelText is set") {
                let expected = lowerLabelText
                let tested = sut.lowerLabelText

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
