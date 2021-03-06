// Generated using Sourcery 0.17.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// MARK: - MWChildViewControllerTests

import Nimble
import Quick
@testable import MoonWalker

class MWChildViewControllerTests: QuickSpec {

    override func spec() {

        describe("MWChildViewControllerTests") {

            let viewController = UIViewController()
            let layout = MWCenteredItemLayout()

            let sut = MWChildViewController(
                viewController: viewController, layout: layout
            )

            it("viewController is set") {
                let expected = viewController
                let tested = sut.viewController

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
