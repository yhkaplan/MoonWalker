// Generated using Sourcery 0.13.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// MARK: - MWButtonLayoutTests

import Quick
import Nimble
@testable import MoonWalker

class MWButtonLayoutTests: QuickSpec {

    override func spec() {

        describe("MWButtonLayoutTests") {

            let leading = generateRandomCGFloat()
            let trailing = generateRandomCGFloat()
            let bottom = generateRandomCGFloat()
            let height = generateRandomCGFloat()
            let width = generateRandomCGFloat()

            let sut = MWButtonLayout(
                leading: leading, trailing: trailing, bottom: bottom, height: height, width: width
            )

            it("leading is set") {
                let expected = leading
                let tested = sut.leading

                expect(tested).to(equal(expected))
            }

            it("trailing is set") {
                let expected = trailing
                let tested = sut.trailing

                expect(tested).to(equal(expected))
            }

            it("bottom is set") {
                let expected = bottom
                let tested = sut.bottom

                expect(tested).to(equal(expected))
            }

            it("height is set") {
                let expected = height
                let tested = sut.height

                expect(tested).to(equal(expected))
            }

            it("width is set") {
                let expected = width
                let tested = sut.width

                expect(tested).to(equal(expected))
            }

        }
    }
}