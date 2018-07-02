//
//  ArrayExtensionsTests.swift
//  MoonWalkerTests
//
//  Created by Joshua Kaplan on 2018/06/30.
//

import Quick
import Nimble
@testable import MoonWalker

class ArrayExtensionsTests: QuickSpec {
    
    override func spec() {
        
        describe("Array extensions") {
            
            let array: [String] = ["green", "blue", "red"]

            context("When finalValidIndex is called") {

                it("returns the final value for a non empty array") {
                    let expected = array.count - 1
                    let tested = array.finalValidIndex

                    expect(tested).to(equal(expected))
                }

                it("returns 0 for an empty array") {
                    let emptyArray: [Int] = []

                    let expected = 0
                    let tested = emptyArray.finalValidIndex

                    expect(tested).to(equal(expected))
                }

            }

            context("When subscript after is called") {
                
                it("returns the first value for endIndex") {
                    
                    guard
                        let expected = array.first,
                        let tested = array[after: array.finalValidIndex]
                    else {
                        fail(); return
                    }
                    
                    expect(tested).to(equal(expected))
                }
             
                it("returns the value after for regular index") {
                    
                    let arrayIndex = 1
                    
                    let expected = array[arrayIndex + 1]
                    
                    guard let tested = array[after: arrayIndex] else {
                        fail(); return
                    }
                    
                    expect(tested).to(equal(expected))
                }

                it("returns nil for empty array") {
                    
                    let arrayIndex = 0
                    let emptyArray: [Int] = []
                    
                    let tested: Int? = emptyArray[after: arrayIndex]
                    
                    expect(tested).to(beNil())
                }
                
            }

            context("When subscript before is called") {
                
                it("returns the last value for startIndex") {

                    guard
                        let expected = array.last,
                        let tested = array[before: array.startIndex]
                    else {
                            fail(); return
                    }

                    expect(tested).to(equal(expected))
                }

                it("returns the value after for regular index") {

                    let arrayIndex = 1

                    let expected = array[arrayIndex - 1]

                    guard let tested = array[before: arrayIndex] else {
                        fail(); return
                    }

                    expect(tested).to(equal(expected))
                }
                
                it("returns nil for empty array") {
                    
                    let arrayIndex = 0
                    let emptyArray: [Int] = []
                    
                    let tested: Int? = emptyArray[before: arrayIndex]
                    
                    expect(tested).to(beNil())
                }
                
            }
            
        }
        
    }
}
