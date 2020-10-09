// Generated using Sourcery 0.17.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// MARK: - MWMainImageTests

import Nimble
import Quick
@testable import MoonWalker

class MWMainImageTests: QuickSpec {

    override func spec() {

        describe("MWMainImageTests") {

            let image = UIImage()
            let contentMode = UIView.ContentMode.bottom
            let layout = MWMainImageLayout()

            let sut = MWMainImage(
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
