//
//  CodeGenerationProtocols.swift
//  MoonWalkerTests
//
//  Created by Joshua Kaplan on 2018/07/02.
//

import MoonWalker

protocol AutoTestable {}
extension MWChildViewModel: AutoTestable {}
extension UpperLabelLayout: AutoTestable {}
extension LowerLabelLayout: AutoTestable {}

protocol AutoEquatable {}
extension UpperLabelLayout: AutoEquatable {}
extension LowerLabelLayout: AutoEquatable {}
extension MWChildViewModel: AutoEquatable {}
