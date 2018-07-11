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
            let layout = MWButtonLayout()

            let sut = MWButton(
                label: label, labelColor: labelColor, backgroundImage: backgroundImage, layout: layout
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

            it("layout is set") {
                let expected = layout
                let tested = sut.layout

                expect(tested).to(equal(expected))
            }

        }
    }
}
