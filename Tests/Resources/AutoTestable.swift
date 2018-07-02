//
//  AutoTestable.swift
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
