// Generated using Sourcery 0.13.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// MARK: - MWCenteredItemLayoutTests

import Nimble
import Quick
@testable import MoonWalker

class MWCenteredItemLayoutTests: QuickSpec {

    override func spec() {

        describe("MWCenteredItemLayoutTests") {

            let leadingConstant = generateRandomCGFloat()
            let trailingConstant = generateRandomCGFloat()
            let bottomConstant = generateRandomCGFloat()
            let topConstant = generateRandomCGFloat()

            let sut = MWCenteredItemLayout(
                leadingConstant: leadingConstant, trailingConstant: trailingConstant, bottomConstant: bottomConstant, topConstant: topConstant
            )

            it("leadingConstant is set") {
                let expected = leadingConstant
                let tested = sut.leadingConstant

                expect(tested) == expected
            }

            it("trailingConstant is set") {
                let expected = trailingConstant
                let tested = sut.trailingConstant

                expect(tested) == expected
            }

            it("bottomConstant is set") {
                let expected = bottomConstant
                let tested = sut.bottomConstant

                expect(tested) == expected
            }

            it("topConstant is set") {
                let expected = topConstant
                let tested = sut.topConstant

                expect(tested) == expected
            }

        }
    }
}