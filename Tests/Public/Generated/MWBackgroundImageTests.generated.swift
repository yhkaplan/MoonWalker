// Generated using Sourcery 0.13.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// MARK: - MWBackgroundImageTests

import Nimble
import Quick
@testable import MoonWalker

class MWBackgroundImageTests: QuickSpec {

    override func spec() {

        describe("MWBackgroundImageTests") {

            let image = UIImage()
            let contentMode = UIViewContentMode.bottom
            let layout = MWBackgroundImageLayout()

            let sut = MWBackgroundImage(
                image: image, contentMode: contentMode, layout: layout
            )

            it("image is set") {
                let expected = image
                let tested = sut.image

                expect(tested) == expected
            }

            it("contentMode is set") {
                let expected = contentMode
                let tested = sut.contentMode

                expect(tested) == expected
            }

            it("layout is set") {
                let expected = layout
                let tested = sut.layout

                expect(tested) == expected
            }

        }
    }
}
