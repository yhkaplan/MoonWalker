// Generated using Sourcery 0.13.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// MARK: - MWChildViewControllerTests

import Quick
import Nimble
@testable import MoonWalker

class MWChildViewControllerTests: QuickSpec {

    override func spec() {

        describe("MWChildViewControllerTests") {

            let viewController = UIViewController()
            let layout = MWCenteredObjectLayout()

            let sut = MWChildViewController(
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
