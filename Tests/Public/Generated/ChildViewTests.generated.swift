// Generated using Sourcery 0.13.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// MARK: - ChildViewTests

import Quick
import Nimble
@testable import MoonWalker

class ChildViewTests: QuickSpec {

    override func spec() {

        describe("ChildViewTests") {

            let view = UIView()
            let layout = CenteredObjectLayout()

            let sut = ChildView(
                view: view, layout: layout
            )

            it("view is set") {
                let expected = view
                let tested = sut.view

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
