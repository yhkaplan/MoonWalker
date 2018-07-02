// Generated using Sourcery 0.13.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// MARK: - MWChildViewLayoutSettingsTests

import Quick
import Nimble
@testable import MoonWalker

class MWChildViewLayoutSettingsTests: QuickSpec {

    override func spec() {

        describe("MWChildViewLayoutSettingsTests") {

            let upperLabel = UpperLabel()
            let lowerLabel = LowerLabel()

            let sut = MWChildViewLayoutSettings(
                upperLabel: upperLabel, lowerLabel: lowerLabel
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

        }
    }
}
