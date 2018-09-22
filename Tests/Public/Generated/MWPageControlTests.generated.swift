// Generated using Sourcery 0.14.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// MARK: - MWPageControlTests

import Nimble
import Quick
@testable import MoonWalker

class MWPageControlTests: QuickSpec {

    override func spec() {

        describe("MWPageControlTests") {

            let pageIndicatorTintColor = UIColor.green
            let currentPageIndicatorTintColor = UIColor.green
            let layout = MWPageControlLayout()

            let sut = MWPageControl(
                pageIndicatorTintColor: pageIndicatorTintColor, currentPageIndicatorTintColor: currentPageIndicatorTintColor, layout: layout
            )

            it("pageIndicatorTintColor is set") {
                let expected = pageIndicatorTintColor
                let tested = sut.pageIndicatorTintColor

                expect(tested) == expected
            }

            it("currentPageIndicatorTintColor is set") {
                let expected = currentPageIndicatorTintColor
                let tested = sut.currentPageIndicatorTintColor

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
