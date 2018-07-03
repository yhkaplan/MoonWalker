// Generated using Sourcery 0.13.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// MARK: - MWChildViewLayoutSettingsTests

import Quick
import Nimble
@testable import MoonWalker

class MWChildViewLayoutSettingsTests: QuickSpec {

    override func spec() {

        describe("MWChildViewLayoutSettingsTests") {

            let upperLabelLayout = UpperLabelLayout()
            let lowerLabelLayout = LowerLabelLayout()

            let sut = MWChildViewLayoutSettings(
                upperLabelLayout: upperLabelLayout, lowerLabelLayout: lowerLabelLayout
            )

            it("upperLabelLayout is set") {
                let expected = upperLabelLayout
                let tested = sut.upperLabelLayout

                expect(tested).to(equal(expected))
            }

            it("lowerLabelLayout is set") {
                let expected = lowerLabelLayout
                let tested = sut.lowerLabelLayout

                expect(tested).to(equal(expected))
            }

        }
    }
}
