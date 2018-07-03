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

extension UIViewController {

    func hasLabel(with text: String?) -> Bool {
        guard text != nil else { return false }

        return getAllSubviews(of: UILabel.self)
            .contains(where: { $0.text == text })
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
