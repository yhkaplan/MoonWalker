// Generated using Sourcery 0.13.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// MARK: - MWMainImageSettingsTests

import Nimble
import Quick
@testable import MoonWalker

class MWMainImageSettingsTests: QuickSpec {

    override func spec() {

        describe("MWMainImageSettingsTests") {

            let image = UIImage()
            let layout = MWCenteredObjectLayout()

            let sut = MWMainImageSettings(
                image: image, layout: layout
            )

            it("image is set") {
                let expected = image
                let tested = sut.image

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
