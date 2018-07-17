// Generated using Sourcery 0.13.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// MARK: - MWButtonTests

import Quick
import Nimble
@testable import MoonWalker

class MWButtonTests: QuickSpec {

    override func spec() {

        describe("MWButtonTests") {

            let label = "test label"
            let labelColor = UIColor.green
            let backgroundImage = UIImage()
            let isHiddenOnLastScreen = Bool()
            let action = MWButtonAction.nextPage
            let layout = MWButtonLayout()

            let sut = MWButton(
                label: label, labelColor: labelColor, backgroundImage: backgroundImage, isHiddenOnLastScreen: isHiddenOnLastScreen, action: action, layout: layout
            )

            it("label is set") {
                let expected = label
                let tested = sut.label

                expect(tested).to(equal(expected))
            }

            it("labelColor is set") {
                let expected = labelColor
                let tested = sut.labelColor

                expect(tested).to(equal(expected))
            }

            it("backgroundImage is set") {
                let expected = backgroundImage
                let tested = sut.backgroundImage

                expect(tested).to(equal(expected))
            }

            it("isHiddenOnLastScreen is set") {
                let expected = isHiddenOnLastScreen
                let tested = sut.isHiddenOnLastScreen

                expect(tested).to(equal(expected))
            }

            it("action is set") {
                let expected = action
                let tested = sut.action

                expect(tested).to(equal(expected))
            }

            it("layout is set") {
                let expected = layout
                let tested = sut.layout

                expect(tested).to(equal(expected))
            }

        }
    }
}
