// Generated using Sourcery 0.13.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// MARK: - MWUpperLabelLayoutTests

import Nimble
import Quick
@testable import MoonWalker

class MWUpperLabelLayoutTests: QuickSpec {

    override func spec() {

        describe("MWUpperLabelLayoutTests") {

            let leadingConstant = generateRandomCGFloat()
            let trailingConstant = generateRandomCGFloat()
            let topConstant = generateRandomCGFloat()
            let height = generateRandomCGFloat()

            let sut = MWUpperLabelLayout(
                leadingConstant: leadingConstant, trailingConstant: trailingConstant, topConstant: topConstant, height: height
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

            it("topConstant is set") {
                let expected = topConstant
                let tested = sut.topConstant

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
