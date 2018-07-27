// Generated using Sourcery 0.13.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// MARK: - MWTextSettingsTests

import Nimble
import Quick
@testable import MoonWalker

class MWTextSettingsTests: QuickSpec {

    override func spec() {

        describe("MWTextSettingsTests") {

            let font = UIFont.boldSystemFont(ofSize: 20.0)
            let color = UIColor.green
            let numberOfLines = Int()
            let hasBlurredShadow = false
            let textAlignment = NSTextAlignment.right
            let adjustsFontSizeToFitWidth = false

            let sut = MWTextSettings(
                font: font, color: color, numberOfLines: numberOfLines, hasBlurredShadow: hasBlurredShadow, textAlignment: textAlignment, adjustsFontSizeToFitWidth: adjustsFontSizeToFitWidth
            )

            it("font is set") {
                let expected = font
                let tested = sut.font

                expect(tested) == expected
            }

            it("color is set") {
                let expected = color
                let tested = sut.color

                expect(tested) == expected
            }

            it("numberOfLines is set") {
                let expected = numberOfLines
                let tested = sut.numberOfLines

                expect(tested) == expected
            }

            it("hasBlurredShadow is set") {
                let expected = hasBlurredShadow
                let tested = sut.hasBlurredShadow

                expect(tested) == expected
            }

            it("textAlignment is set") {
                let expected = textAlignment
                let tested = sut.textAlignment

                expect(tested) == expected
            }

            it("adjustsFontSizeToFitWidth is set") {
                let expected = adjustsFontSizeToFitWidth
                let tested = sut.adjustsFontSizeToFitWidth

                expect(tested) == expected
            }

        }
    }
}
