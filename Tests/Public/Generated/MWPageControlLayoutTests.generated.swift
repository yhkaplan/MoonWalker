// Generated using Sourcery 0.13.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// MARK: - MWPageControlLayoutTests

import Quick
import Nimble
@testable import MoonWalker

class MWPageControlLayoutTests: QuickSpec {

    override func spec() {

        describe("MWPageControlLayoutTests") {

            let centerXConstant = generateRandomCGFloat()
            let bottomConstant = generateRandomCGFloat()

            let sut = MWPageControlLayout(
                centerXConstant: centerXConstant, bottomConstant: bottomConstant
            )

            it("centerXConstant is set") {
                let expected = centerXConstant
                let tested = sut.centerXConstant

                expect(tested).to(equal(expected))
            }

            it("bottomConstant is set") {
                let expected = bottomConstant
                let tested = sut.bottomConstant

                expect(tested).to(equal(expected))
            }

        }
    }
}