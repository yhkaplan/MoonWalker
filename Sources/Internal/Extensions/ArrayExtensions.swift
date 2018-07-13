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

    func getNextValidIndex(_ index: Int) -> Int {
        return index >= finalValidIndex ? startIndex : index + 1
    }

    func getPreviousValidIndex(_ index: Int) -> Int {
        return index == startIndex ? finalValidIndex : index - 1
    }

    subscript(after index: Int) -> Element? {
        let nextIndex = getNextValidIndex(index)
        return self[nextIndex]
    }

    subscript(before index: Int) -> Element? {
        let previousIndex = getPreviousValidIndex(index)
        return self[previousIndex]
    }
    
}
