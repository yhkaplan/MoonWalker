//
//  WalkthroughChildView.swift
//  MoonWalker
//
//  Created by josh on 2018/06/20.
//  Copyright © 2018年 josh. All rights reserved.
//

/**
 This struct represents the data that will fill your Walkthrough views
*/
public struct WalkthroughChildView {

    let upperLabelText: String?
    let lowerLabelText: String?
    let childView: UIView?
    let mainImage: UIImage?
    let backgroundImage: UIImage?

}

// Making the initializer in extension leaves memberwise init
extension WalkthroughChildView {

    init() {
        self.init(
            upperLabelText: nil,
            lowerLabelText: nil,
            childView: nil,
            mainImage: nil,
            backgroundImage: nil
        )
    }

}
