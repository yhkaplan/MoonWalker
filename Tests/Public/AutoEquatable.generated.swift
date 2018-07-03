// Generated using Sourcery 0.13.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

@testable import MoonWalker

// swiftlint:disable file_length
fileprivate func compareOptionals<T>(lhs: T?, rhs: T?, compare: (_ lhs: T, _ rhs: T) -> Bool) -> Bool {
    switch (lhs, rhs) {
    case let (lValue?, rValue?):
        return compare(lValue, rValue)
    case (nil, nil):
        return true
    default:
        return false
    }
}

fileprivate func compareArrays<T>(lhs: [T], rhs: [T], compare: (_ lhs: T, _ rhs: T) -> Bool) -> Bool {
    guard lhs.count == rhs.count else { return false }
    for (idx, lhsItem) in lhs.enumerated() {
        guard compare(lhsItem, rhs[idx]) else { return false }
    }

    return true
}


// MARK: - AutoEquatable for classes, protocols, structs
// MARK: - LowerLabelLayout AutoEquatable
extension LowerLabelLayout: Equatable {}
public func == (lhs: LowerLabelLayout, rhs: LowerLabelLayout) -> Bool {
    guard lhs.leadingConstant == rhs.leadingConstant else { return false }
    guard lhs.trailingConstant == rhs.trailingConstant else { return false }
    guard lhs.bottomConstant == rhs.bottomConstant else { return false }
    guard lhs.height == rhs.height else { return false }
    return true
}
// MARK: - MWChildViewLayoutSettings AutoEquatable
extension MWChildViewLayoutSettings: Equatable {}
public func == (lhs: MWChildViewLayoutSettings, rhs: MWChildViewLayoutSettings) -> Bool {
    guard lhs.upperLabelLayout == rhs.upperLabelLayout else { return false }
    guard lhs.lowerLabelLayout == rhs.lowerLabelLayout else { return false }
    return true
}
// MARK: - MWChildViewModel AutoEquatable
extension MWChildViewModel: Equatable {}
public func == (lhs: MWChildViewModel, rhs: MWChildViewModel) -> Bool {
    guard compareOptionals(lhs: lhs.upperLabelText, rhs: rhs.upperLabelText, compare: ==) else { return false }
    guard compareOptionals(lhs: lhs.lowerLabelText, rhs: rhs.lowerLabelText, compare: ==) else { return false }
    guard compareOptionals(lhs: lhs.childView, rhs: rhs.childView, compare: ==) else { return false }
    guard compareOptionals(lhs: lhs.mainImage, rhs: rhs.mainImage, compare: ==) else { return false }
    guard compareOptionals(lhs: lhs.backgroundImage, rhs: rhs.backgroundImage, compare: ==) else { return false }
    return true
}
// MARK: - UpperLabelLayout AutoEquatable
extension UpperLabelLayout: Equatable {}
public func == (lhs: UpperLabelLayout, rhs: UpperLabelLayout) -> Bool {
    guard lhs.leadingConstant == rhs.leadingConstant else { return false }
    guard lhs.trailingConstant == rhs.trailingConstant else { return false }
    guard lhs.topConstant == rhs.topConstant else { return false }
    guard lhs.height == rhs.height else { return false }
    return true
}

// MARK: - AutoEquatable for Enums
