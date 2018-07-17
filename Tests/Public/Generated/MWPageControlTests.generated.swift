// Generated using Sourcery 0.13.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// MARK: - MWPageControlTests

import Quick
import Nimble
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

                expect(tested).to(equal(expected))
            }

            it("currentPageIndicatorTintColor is set") {
                let expected = currentPageIndicatorTintColor
                let tested = sut.currentPageIndicatorTintColor

                expect(tested).to(equal(expected))
            }

            it("layout is set") {
                let expected = layout
                let tested = sut.layout

                expect(tested).to(equal(expected))
            }

        }
    }
}
