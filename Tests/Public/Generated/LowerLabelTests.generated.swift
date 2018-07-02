// Generated using Sourcery 0.13.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// MARK: - LowerLabelTests

import Quick
import Nimble
@testable import MoonWalker

class LowerLabelTests: QuickSpec {

    override func spec() {

        describe("LowerLabelTests") {

            let leadingConstant = generateRandomCGFloat()
            let trailingConstant = generateRandomCGFloat()
            let bottomConstant = generateRandomCGFloat()
            let height = generateRandomCGFloat()

            let sut = LowerLabel(
                leadingConstant: leadingConstant, trailingConstant: trailingConstant, bottomConstant: bottomConstant, height: height
            )

            it("leadingConstant is set") {
                let expected = leadingConstant
                let tested = sut.leadingConstant

                expect(tested).to(equal(expected))
            }

            it("trailingConstant is set") {
                let expected = trailingConstant
                let tested = sut.trailingConstant

                expect(tested).to(equal(expected))
            }

            it("bottomConstant is set") {
                let expected = bottomConstant
                let tested = sut.bottomConstant

                expect(tested).to(equal(expected))
            }

            it("height is set") {
                let expected = height
                let tested = sut.height

                expect(tested).to(equal(expected))
            }

        }
    }
}
