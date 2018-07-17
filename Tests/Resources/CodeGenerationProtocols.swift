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
extension TextSettings: AutoTestable {}
extension UpperLabelSettings: AutoTestable {}
extension LowerLabelSettings: AutoTestable {}

extension CenteredObjectLayout: AutoTestable {}

extension BackgroundImageLayout: AutoTestable {}
extension MainImageSettings: AutoTestable {}
extension BackgroundImageSettings: AutoTestable {}

extension ChildView: AutoTestable {}

extension MWButton: AutoTestable {}
extension MWButtonLayout: AutoTestable {}

extension MWPageControl: AutoTestable {}
extension MWPageControlLayout: AutoTestable {}
