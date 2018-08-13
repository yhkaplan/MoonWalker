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

        set(settings) {
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
            let lineSpacing = settings.lineSpacing {
            attributedString.setCharacterSpacing(characterSpacing, text: textString)
            let paragraphStyle = attributedString.getParagraphStyle(with: lineSpacing)
            attributedString.setParagraphStyle(to: settings.textAlignment, with: textString, paragraphStyle: paragraphStyle)

        } else if let characterSpacing = settings.characterSpacing {
            attributedString.setCharacterSpacing(characterSpacing, text: textString)
            // TODO: test if this issue appears only with other cases
            attributedString.setParagraphStyle(to: settings.textAlignment, with: textString)

        } else if let lineSpacing = settings.lineSpacing {
            let paragraphStyle = attributedString.getParagraphStyle(with: lineSpacing)
            attributedString.setParagraphStyle(to: settings.textAlignment, with: textString, paragraphStyle: paragraphStyle)
        }

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

    func getParagraphStyle(with lineSpacing: CGFloat) -> NSMutableParagraphStyle {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = lineSpacing

        return paragraphStyle
    }

    // Making a text label use an attributedString makes it ignore alignment settings
    func setParagraphStyle(
        to alignment: NSTextAlignment,
        with text: String,
        paragraphStyle: NSMutableParagraphStyle = NSMutableParagraphStyle()
    ) {
        paragraphStyle.alignment = alignment
        addAttribute(
            .paragraphStyle,
            value: paragraphStyle,
            range: NSRange(location: 0, length: text.count)
        )
    }

}
