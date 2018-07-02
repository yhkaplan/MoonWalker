// Generated using Sourcery 0.13.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// MARK: - MWChildViewTests

import Quick
import Nimble
@testable import MoonWalker

class MWChildViewTests: QuickSpec {

    override func spec() {

        describe("MWChildViewTests") {

            let viewModel = MWChildViewModel()
            let layoutSettings = MWChildViewLayoutSettings()

            let sut = MWChildView(
                viewModel: viewModel, layoutSettings: layoutSettings
            )

            it("viewModel is set") {
                let expected = viewModel
                let tested = sut.viewModel

                expect(tested).to(equal(expected))
            }

            it("layoutSettings is set") {
                let expected = layoutSettings
                let tested = sut.layoutSettings

                expect(tested).to(equal(expected))
            }

        }
    }
}
