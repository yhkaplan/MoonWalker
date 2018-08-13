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

    func nextIndex(for index: Int) -> Int? {
        if isEmpty { return nil }
        return index >= finalValidIndex ? startIndex : index + 1
    }

    subscript(after index: Int) -> Element? {
        guard let nextIndex = nextIndex(for: index) else { return nil }
        return self[nextIndex]
    }

    func previousIndex(for index: Int) -> Int? {
        if isEmpty { return nil }
        return index <= startIndex ? finalValidIndex : index - 1
    }

    subscript(before index: Int) -> Element? {
        guard let previousIndex = previousIndex(for: index) else { return nil }
        return self[previousIndex]
    }

}
