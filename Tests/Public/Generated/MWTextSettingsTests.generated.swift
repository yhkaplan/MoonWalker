// Generated using Sourcery 0.13.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// MARK: - MWTextSettingsTests

import Quick
import Nimble
@testable import MoonWalker

class MWTextSettingsTests: QuickSpec {

    override func spec() {

        describe("MWTextSettingsTests") {

            let font = UIFont.boldSystemFont(ofSize: 20.0)
            let color = UIColor.green
            let shadowColor = UIColor.green
            let shadowOffset = CGSize(width: generateRandomCGFloat(), height: generateRandomCGFloat())
            let textAlignment = NSTextAlignment.right

            let sut = MWTextSettings(
                font: font, color: color, shadowColor: shadowColor, shadowOffset: shadowOffset, textAlignment: textAlignment
            )

            it("font is set") {
                let expected = font
                let tested = sut.font

                expect(tested).to(equal(expected))
            }

            it("color is set") {
                let expected = color
                let tested = sut.color

                expect(tested).to(equal(expected))
            }

            it("shadowColor is set") {
                let expected = shadowColor
                let tested = sut.shadowColor

                expect(tested).to(equal(expected))
            }

            it("shadowOffset is set") {
                let expected = shadowOffset
                let tested = sut.shadowOffset

                expect(tested).to(equal(expected))
            }

            it("textAlignment is set") {
                let expected = textAlignment
                let tested = sut.textAlignment

                expect(tested).to(equal(expected))
            }

        }
    }
}
