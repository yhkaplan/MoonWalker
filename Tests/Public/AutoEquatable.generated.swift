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
// MARK: - BackgroundImageLayout AutoEquatable
extension BackgroundImageLayout: Equatable {}
public func == (lhs: BackgroundImageLayout, rhs: BackgroundImageLayout) -> Bool {
    guard lhs.leadingConstant == rhs.leadingConstant else { return false }
    guard lhs.trailingConstant == rhs.trailingConstant else { return false }
    guard lhs.bottomConstant == rhs.bottomConstant else { return false }
    guard lhs.topConstant == rhs.topConstant else { return false }
    return true
}
// MARK: - BackgroundImageSettings AutoEquatable
extension BackgroundImageSettings: Equatable {}
public func == (lhs: BackgroundImageSettings, rhs: BackgroundImageSettings) -> Bool {
    guard compareOptionals(lhs: lhs.image, rhs: rhs.image, compare: ==) else { return false }
    guard lhs.layout == rhs.layout else { return false }
    return true
}
// MARK: - CenteredObjectLayout AutoEquatable
extension CenteredObjectLayout: Equatable {}
public func == (lhs: CenteredObjectLayout, rhs: CenteredObjectLayout) -> Bool {
    guard lhs.leadingConstant == rhs.leadingConstant else { return false }
    guard lhs.trailingConstant == rhs.trailingConstant else { return false }
    guard lhs.bottomConstant == rhs.bottomConstant else { return false }
    guard lhs.topConstant == rhs.topConstant else { return false }
    return true
}
// MARK: - LowerLabelLayout AutoEquatable
extension LowerLabelLayout: Equatable {}
public func == (lhs: LowerLabelLayout, rhs: LowerLabelLayout) -> Bool {
    guard lhs.leadingConstant == rhs.leadingConstant else { return false }
    guard lhs.trailingConstant == rhs.trailingConstant else { return false }
    guard lhs.bottomConstant == rhs.bottomConstant else { return false }
    guard lhs.height == rhs.height else { return false }
    return true
}
// MARK: - LowerLabelSettings AutoEquatable
extension LowerLabelSettings: Equatable {}
public func == (lhs: LowerLabelSettings, rhs: LowerLabelSettings) -> Bool {
    guard compareOptionals(lhs: lhs.text, rhs: rhs.text, compare: ==) else { return false }
    guard lhs.layout == rhs.layout else { return false }
    guard lhs.textSettings == rhs.textSettings else { return false }
    return true
}
// MARK: - MWChildViewModel AutoEquatable
extension MWChildViewModel: Equatable {}
public func == (lhs: MWChildViewModel, rhs: MWChildViewModel) -> Bool {
    guard lhs.upperLabel == rhs.upperLabel else { return false }
    guard lhs.lowerLabel == rhs.lowerLabel else { return false }
    guard compareOptionals(lhs: lhs.childView, rhs: rhs.childView, compare: ==) else { return false }
    guard lhs.mainImage == rhs.mainImage else { return false }
    guard lhs.backgroundImage == rhs.backgroundImage else { return false }
    return true
}
// MARK: - MainImageSettings AutoEquatable
extension MainImageSettings: Equatable {}
public func == (lhs: MainImageSettings, rhs: MainImageSettings) -> Bool {
    guard compareOptionals(lhs: lhs.image, rhs: rhs.image, compare: ==) else { return false }
    guard lhs.layout == rhs.layout else { return false }
    return true
}
// MARK: - TextSettings AutoEquatable
extension TextSettings: Equatable {}
public func == (lhs: TextSettings, rhs: TextSettings) -> Bool {
    guard lhs.font == rhs.font else { return false }
    guard lhs.color == rhs.color else { return false }
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
// MARK: - UpperLabelSettings AutoEquatable
extension UpperLabelSettings: Equatable {}
public func == (lhs: UpperLabelSettings, rhs: UpperLabelSettings) -> Bool {
    guard compareOptionals(lhs: lhs.text, rhs: rhs.text, compare: ==) else { return false }
    guard lhs.layout == rhs.layout else { return false }
    guard lhs.textSettings == rhs.textSettings else { return false }
    return true
}

// MARK: - AutoEquatable for Enums
