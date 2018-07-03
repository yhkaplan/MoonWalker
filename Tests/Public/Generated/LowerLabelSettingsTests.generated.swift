// Generated using Sourcery 0.13.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// MARK: - LowerLabelSettingsTests

import Quick
import Nimble
@testable import MoonWalker

class LowerLabelSettingsTests: QuickSpec {

    override func spec() {

        describe("LowerLabelSettingsTests") {

            let text = "test text"
            let layout = LowerLabelLayout()
            let textSettings = TextSettings()

            let sut = LowerLabelSettings(
                text: text, layout: layout, textSettings: textSettings
            )

            it("text is set") {
                let expected = text
                let tested = sut.text

                expect(tested).to(equal(expected))
            }

            it("layout is set") {
                let expected = layout
                let tested = sut.layout

                expect(tested).to(equal(expected))
            }

            it("textSettings is set") {
                let expected = textSettings
                let tested = sut.textSettings

                expect(tested).to(equal(expected))
            }

        }
    }
}
