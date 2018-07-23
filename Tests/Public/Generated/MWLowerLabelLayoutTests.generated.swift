// Generated using Sourcery 0.13.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// MARK: - MWLowerLabelLayoutTests

import Nimble
import Quick
@testable import MoonWalker

class MWLowerLabelLayoutTests: QuickSpec {

    override func spec() {

        describe("MWLowerLabelLayoutTests") {

            let leadingConstant = generateRandomCGFloat()
            let trailingConstant = generateRandomCGFloat()
            let bottomConstant = generateRandomCGFloat()
            let height = generateRandomCGFloat()

            let sut = MWLowerLabelLayout(
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
