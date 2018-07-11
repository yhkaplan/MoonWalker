//
//  TestHelpers.swift
//  MoonWalker
//
//  Created by josh on 2018/06/21.
//

import UIKit

func generateRandomCGFloat() -> CGFloat {
    return CGFloat(drand48())
}

extension Collection where Element: Equatable {

    typealias FilterHandler = (Element) -> Bool

    // Returns nil if not unique
    func filterUnique(_ isIncluded: @escaping FilterHandler) -> Element? {
        let filteredElements = filter(isIncluded)
        let isUnique = filteredElements.count == 1

        return isUnique ? filteredElements.first : nil
    }

}

extension UIViewController {

    func getLabelWithText(_ text: String?) -> UILabel? {
        guard text != nil else { return nil }

        return getAllSubviews(of: UILabel.self)
            .filterUnique { $0.text == text }
    }

    func hasImage(with image: UIImage?) -> Bool {
        guard image != nil else { return false }

        return getAllSubviews(of: UIImageView.self)
            .contains(where: { $0.image == image })
    }

    func getAllSubviews<Subview: UIView>(of type: Subview.Type) -> [Subview] {//contrains type as .Type?
        return view.subviews.compactMap { $0 as? Subview }
    }

    func containsSubview(_ subView: UIView) -> Bool {
        return view.subviews.contains(subView)
    }

    // Calls viewDidLoad/Appear for testing purposes
    func preloadView() {
        _ = view
    }

}
