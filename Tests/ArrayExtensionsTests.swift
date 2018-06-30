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
                
            }
            
        }
        
    }
}
