//
//  UILabelExtensions.swift
//  MoonWalker
//
//  Created by josh on 2018/07/09.
//

import UIKit

extension UILabel {

    var textSettings: TextSettings {
        get {
            return TextSettings(
                font: font,
                color: textColor,
                textAlignment: textAlignment
            )
        }

        set (settings) {
            font = settings.font
            textColor = settings.color
            textAlignment = settings.textAlignment
        }
    }

}
