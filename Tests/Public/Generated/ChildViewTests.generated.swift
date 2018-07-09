// Generated using Sourcery 0.13.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// MARK: - ChildViewTests

import Quick
import Nimble
@testable import MoonWalker

class ChildViewTests: QuickSpec {

    override func spec() {

        describe("ChildViewTests") {

            let viewController = UIViewController()
            let layout = CenteredObjectLayout()

            let sut = ChildView(
                viewController: viewController, layout: layout
            )

            it("viewController is set") {
                let expected = viewController
                let tested = sut.viewController

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
