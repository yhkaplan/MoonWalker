// Generated using Sourcery 0.14.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// MARK: - MWLowerItemLayoutTests

import Nimble
import Quick
@testable import MoonWalker

class MWLowerItemLayoutTests: QuickSpec {

    override func spec() {

        describe("MWLowerItemLayoutTests") {

            let leadingConstant = generateRandomCGFloat()
            let trailingConstant = generateRandomCGFloat()
            let bottomConstant = generateRandomCGFloat()
            let height = generateRandomCGFloat()

            let sut = MWLowerItemLayout(
                leadingConstant: leadingConstant, trailingConstant: trailingConstant, bottomConstant: bottomConstant, height: height
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

            it("height is set") {
                let expected = height
                let tested = sut.height

                expect(tested) == expected
            }

        }
    }
}
