//
//  MoonWalkerTests.swift
//  MoonWalkerTests
//
//  Copyright © 2018 yhkaplan. All rights reserved.
//

import Quick
import Nimble
@testable import MoonWalker

class WalkthroughViewTests: QuickSpec {
    override func spec() {
        describe("WalkthroughView") {

            it("has upperLabelText set") {
                expect(1) == 2
            }

            it("has lowerLabelText set") {
                expect("number") == "string"
            }

            it("will eventually fail") {
                expect("time").toEventually( equal("done") )
            }

            context("these will pass") {

                it("can do maths") {
                    expect(23) == 23
                }

                it("can read") {
                    expect("🐮") == "🐮"
                }

            }
        }
    }
}
