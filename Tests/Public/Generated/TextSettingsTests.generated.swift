// Generated using Sourcery 0.13.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// MARK: - TextSettingsTests

import Quick
import Nimble
@testable import MoonWalker

class TextSettingsTests: QuickSpec {

    override func spec() {

        describe("TextSettingsTests") {

            let font = UIFont.boldSystemFont(ofSize: 20.0)
            let color = UIColor.green
            let textAlignment = NSTextAlignment.right

            let sut = TextSettings(
                font: font, color: color, textAlignment: textAlignment
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

            it("textAlignment is set") {
                let expected = textAlignment
                let tested = sut.textAlignment

                expect(tested).to(equal(expected))
            }

        }
    }
}
