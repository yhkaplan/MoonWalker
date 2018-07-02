//
//  ArrayExtensions.swift
//  MoonWalker
//
//  Created by Joshua Kaplan on 2018/06/30.
//

extension Array {

    var finalValidIndex: Int {
        return count == 0 ? 0 : endIndex - 1
    }

    subscript(after index: Int) -> Element? {
        return index >= finalValidIndex ? first : self[index + 1]
    }

    subscript(before index: Int) -> Element? {
        return index == startIndex ? last : self[index - 1]
    }
    
}
