// Generated using Sourcery 0.13.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// MARK: - UpperLabelSettingsTests

import Quick
import Nimble
@testable import MoonWalker

class UpperLabelSettingsTests: QuickSpec {

    override func spec() {

        describe("UpperLabelSettingsTests") {

            let text = "test text"
            let layout = UpperLabelLayout()
            let textSettings = TextSettings()

            let sut = UpperLabelSettings(
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
