//
//  CodeGenerationProtocols.swift
//  MoonWalkerTests
//
//  Created by Joshua Kaplan on 2018/07/02.
//

import MoonWalker

protocol AutoTestable {}

extension MWChildViewModel: AutoTestable {}

extension MWUpperItemLayout: AutoTestable {}
extension MWLowerItemLayout: AutoTestable {}
extension MWCenteredItemLayout: AutoTestable {}

extension MWUpperLabel: AutoTestable {}
extension MWLowerLabel: AutoTestable {}

extension MWTextSettings: AutoTestable {}

extension MWBackgroundImageLayout: AutoTestable {}
extension MWMainImage: AutoTestable {}
extension MWBackgroundImage: AutoTestable {}
extension MWLowerImage: AutoTestable {}

extension MWChildViewController: AutoTestable {}

extension MWButton: AutoTestable {}
extension MWButtonLayout: AutoTestable {}

extension MWPageControl: AutoTestable {}
extension MWPageControlLayout: AutoTestable {}
