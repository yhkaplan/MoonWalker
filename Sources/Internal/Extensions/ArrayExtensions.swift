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
        if isEmpty { return nil }

        let nextIndex = index >= finalValidIndex ? startIndex : index + 1
        return self[nextIndex]
    }

    subscript(before index: Int) -> Element? {
        if isEmpty { return nil }

        let previousIndex = index <= startIndex ? finalValidIndex : index - 1
        return self[previousIndex]
    }
    
}
