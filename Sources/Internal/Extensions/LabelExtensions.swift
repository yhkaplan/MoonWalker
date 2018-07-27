//
//  LabelExtensions.swift
//  MoonWalker
//
//  Created by josh on 2018/07/09.
//

import UIKit

extension UILabel {

    private var defaultShadowOffset: CGSize {
        return CGSize(width: 0, height: 2)
    }

    var textSettings: MWTextSettings {
        get {
            // TODO: this is a cheap hack to see if shadow was set
            // TODO: add support for attributed string properties
            let hasBlurredShadow = shadowOffset == defaultShadowOffset

            return MWTextSettings(
                font: font,
                color: textColor,
                numberOfLines: numberOfLines,
                hasBlurredShadow: hasBlurredShadow,
                textAlignment: textAlignment,
                adjustsFontSizeToFitWidth: adjustsFontSizeToFitWidth,
                minimumScaleFactor: minimumScaleFactor
            )
        }

        set (settings) {
            font = settings.font
            textColor = settings.color
            numberOfLines = settings.numberOfLines
            textAlignment = settings.textAlignment
            adjustsFontSizeToFitWidth = settings.adjustsFontSizeToFitWidth
            minimumScaleFactor = settings.minimumScaleFactor
            setAttributedStringSettings(settings)

            if settings.hasBlurredShadow {
                setBlurredShadow()
                shadowOffset = defaultShadowOffset
            }
        }
    }

    private func setAttributedStringSettings(_ settings: MWTextSettings) {
        guard let textString = text else {
            assertionFailure("Must set text first")
            return
        }

        if settings.characterSpacing == nil, settings.lineSpacing == nil {
            // No setting required
            return
        }

        let attributedString = NSMutableAttributedString(string: textString)

        if
            let characterSpacing = settings.characterSpacing,
            let lineSpacing = settings.lineSpacing
        {
            attributedString.setCharacterSpacing(characterSpacing, text: textString)
            attributedString.setLineSpacing(lineSpacing, text: textString)

        } else if let characterSpacing = settings.characterSpacing {
            attributedString.setCharacterSpacing(characterSpacing, text: textString)

        } else if let lineSpacing = settings.lineSpacing {
            attributedString.setLineSpacing(lineSpacing, text: textString)
        }

        // Making a text label use an attributedString makes it ignore alignment settings
        attributedString.setTextAlignment(settings.textAlignment, text: textString)

        text = nil
        attributedText = attributedString
    }

    private func setBlurredShadow() {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowRadius = 2.0
        layer.shadowOpacity = 0.5
        layer.shadowOffset = defaultShadowOffset
        layer.masksToBounds = false
    }

}

extension NSMutableAttributedString {

    func setCharacterSpacing(_ spacing: CGFloat, text: String) {
            addAttribute(
                .kern,
                value: spacing,
                range: NSRange(location: 0, length: text.count)
            )
    }

    func setLineSpacing(_ spacing: CGFloat, text: String) {
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.lineSpacing = spacing
            addAttribute(
                .paragraphStyle,
                value: paragraphStyle,
                range: NSRange(location: 0, length: text.count)
            )
    }

    func setTextAlignment(_ alignment: NSTextAlignment, text: String) {
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.alignment = alignment
            addAttribute(
                .paragraphStyle,
                value: paragraphStyle,
                range: NSRange(location: 0, length: text.count)
            )
    }

}
