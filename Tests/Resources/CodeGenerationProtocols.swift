//
//  CodeGenerationProtocols.swift
//  MoonWalkerTests
//
//  Created by Joshua Kaplan on 2018/07/02.
//

import MoonWalker

protocol AutoTestable {}

extension MWChildViewModel: AutoTestable {}

extension MWUpperLabelLayout: AutoTestable {}
extension MWLowerLabelLayout: AutoTestable {}
extension MWTextSettings: AutoTestable {}
extension MWUpperLabelSettings: AutoTestable {}
extension MWLowerLabelSettings: AutoTestable {}

extension MWCenteredObjectLayout: AutoTestable {}

extension MWBackgroundImageLayout: AutoTestable {}
extension MWMainImageSettings: AutoTestable {}
extension MWBackgroundImage: AutoTestable {}

extension MWChildViewController: AutoTestable {}

extension MWButton: AutoTestable {}
extension MWButtonLayout: AutoTestable {}

extension MWPageControl: AutoTestable {}
extension MWPageControlLayout: AutoTestable {}
