//
//  UILabelExtensions.swift
//  MoonWalker
//
//  Created by josh on 2018/07/09.
//

import UIKit

extension UILabel {

    var textSettings: MWTextSettings {
        get {
            return MWTextSettings(
                font: font,
                color: textColor,
                shadowColor: shadowColor,
                shadowOffset: shadowOffset,
                textAlignment: textAlignment
            )
        }

        set (settings) {
            font = settings.font
            textColor = settings.color
            shadowColor = settings.shadowColor
            shadowOffset = settings.shadowOffset
            textAlignment = settings.textAlignment
        }
    }

}
