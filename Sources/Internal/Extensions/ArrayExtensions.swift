//
//  ArrayExtensions.swift
//  MoonWalker
//
//  Created by Joshua Kaplan on 2018/06/30.
//

extension Array {
    
    subscript(after index: Int) -> Element? {
        return index == endIndex ? first : self[index + 1]
    }

    subscript(before index: Int) -> Element? {
        return index == startIndex ? last : self[index - 1]
    }
    
}
