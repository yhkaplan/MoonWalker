// Generated using Sourcery 0.14.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// MARK: - MWButtonTests

import Nimble
import Quick
@testable import MoonWalker

class MWButtonTests: QuickSpec {

    override func spec() {

        describe("MWButtonTests") {

            let label = "test label"
            let labelOnLastPage = "test labelOnLastPage"
            let labelColor = UIColor.green
            let backgroundImage = UIImage()
            let action = MWButtonAction.nextPage
            let layout = MWButtonLayout()

            let sut = MWButton(
                label: label, labelOnLastPage: labelOnLastPage, labelColor: labelColor, backgroundImage: backgroundImage, action: action, layout: layout
            )

            it("label is set") {
                let expected = label
                let tested = sut.label

                expect(tested) == expected
            }

            it("labelOnLastPage is set") {
                let expected = labelOnLastPage
                let tested = sut.labelOnLastPage

                expect(tested) == expected
            }

            it("labelColor is set") {
                let expected = labelColor
                let tested = sut.labelColor

                expect(tested) == expected
            }

            it("backgroundImage is set") {
                let expected = backgroundImage
                let tested = sut.backgroundImage

                expect(tested) == expected
            }

            it("action is set") {
                let expected = action
                let tested = sut.action

                expect(tested) == expected
            }

            it("layout is set") {
                let expected = layout
                let tested = sut.layout

                expect(tested) == expected
            }

        }
    }
}
