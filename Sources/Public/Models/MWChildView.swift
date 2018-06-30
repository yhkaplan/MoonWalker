//
//  MWChildView.swift
//  MoonWalker
//
//  Created by Joshua Kaplan on 2018/06/30.
//

public struct MWChildView {
    
    let viewModel: MWChildViewModel
    let layoutSettings: MWChildViewLayoutSettings
    
    public init(viewModel: MWChildViewModel, layoutSettings: MWChildViewLayoutSettings) {
        self.viewModel = viewModel
        self.layoutSettings = layoutSettings
    }
    
}
