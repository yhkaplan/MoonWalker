//
//  ArrayExtensions.swift
//  MoonWalker
//
//  Created by Joshua Kaplan on 2018/06/30.
//

extension Array {
    
    func element(after index: Int) -> Element? {
        return index == endIndex ? first : self[index + 1]
    }

    func element(before index: Int) -> Element? {
        return index == startIndex ? last : self[index - 1]
    }
    
}
