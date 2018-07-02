//
//  CodeGenerationProtocols.swift
//  MoonWalkerTests
//
//  Created by Joshua Kaplan on 2018/07/02.
//

import MoonWalker

protocol AutoTestable {}
extension MWChildView: AutoTestable {}
extension MWChildViewModel: AutoTestable {}
extension MWChildViewLayoutSettings: AutoTestable {}
extension UpperLabel: AutoTestable {}
extension LowerLabel: AutoTestable {}

protocol AutoEquatable {}
extension UpperLabel: AutoEquatable {}
extension LowerLabel: AutoEquatable {}
extension MWChildViewModel: AutoEquatable {}
extension MWChildViewLayoutSettings: AutoEquatable {}
