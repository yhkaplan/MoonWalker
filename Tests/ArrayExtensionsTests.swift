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
        
        describe("Subscript funcs") {
            
            let array: [String] = ["green", "blue", "red"]
            
            context("When subscript after is called") {
                
                it("returns the first value for endIndex") {
                    
                    guard
                        let expected = array.first,
                        let tested = array[after: array.endIndex]
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
