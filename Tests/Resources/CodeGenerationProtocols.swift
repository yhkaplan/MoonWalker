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

extension MWCenteredObjectLayout: AutoTestable {}

extension MWBackgroundImageLayout: AutoTestable {}
extension MWMainImageSettings: AutoTestable {}
extension MWBackgroundImageSettings: AutoTestable {}

extension MWChildViewController: AutoTestable {}

extension MWButton: AutoTestable {}
extension MWButtonLayout: AutoTestable {}

extension MWPageControl: AutoTestable {}
extension MWPageControlLayout: AutoTestable {}
