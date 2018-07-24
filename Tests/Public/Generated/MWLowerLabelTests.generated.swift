// Generated using Sourcery 0.13.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// MARK: - MWLowerLabelTests

import Nimble
import Quick
@testable import MoonWalker

class MWLowerLabelTests: QuickSpec {

    override func spec() {

        describe("MWLowerLabelTests") {

            let text = "test text"
            let layout = MWLowerLabelLayout()
            let textSettings = MWTextSettings()

            let sut = MWLowerLabel(
                text: text, layout: layout, textSettings: textSettings
            )

            it("text is set") {
                let expected = text
                let tested = sut.text

                expect(tested) == expected
            }

            it("layout is set") {
                let expected = layout
                let tested = sut.layout

                expect(tested) == expected
            }

            it("textSettings is set") {
                let expected = textSettings
                let tested = sut.textSettings

                expect(tested) == expected
            }

        }
    }
}
