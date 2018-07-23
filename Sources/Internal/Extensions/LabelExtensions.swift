//
//  LabelExtensions.swift
//  MoonWalker
//
//  Created by josh on 2018/07/09.
//

import UIKit

extension UILabel {

    private var defaultShadowOffset: CGSize {
        return CGSize(width: 2, height: 2)
    }

    var textSettings: MWTextSettings {
        get {
            // TODO: this is a cheap hack to see if shadow was set
            let hasBlurredShadow = shadowOffset == defaultShadowOffset

            return MWTextSettings(
                font: font,
                color: textColor,
                numberOfLines: numberOfLines,
                hasBlurredShadow: hasBlurredShadow,
                textAlignment: textAlignment
            )
        }

        set (settings) {
            font = settings.font
            textColor = settings.color
            numberOfLines = settings.numberOfLines
            textAlignment = settings.textAlignment

            if settings.hasBlurredShadow {
                setBlurredShadow()
                shadowOffset = defaultShadowOffset
            }
        }
    }

    private func setBlurredShadow() {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowRadius = 3.0
        layer.shadowOpacity = 1.0
        layer.shadowOffset = defaultShadowOffset
        layer.masksToBounds = false
    }

}
