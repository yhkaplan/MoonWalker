//
//  UIViewExtensions.swift
//  MoonWalker
//
//  Created by josh on 2018/06/20.
//

import UIKit

extension UIView {

    func addSubviewWithConstraints(
        _ subView: UIView,
        leadingConstant: CGFloat = 0.0,
        trailingConstant: CGFloat = 0.0,
        topConstant: CGFloat = 0.0,
        bottomConstant: CGFloat = 0.0
    ) {
        self.addSubview(subView)
        subView.translatesAutoresizingMaskIntoConstraints = false

        [subView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: leadingConstant),
         subView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: trailingConstant),
         subView.topAnchor.constraint(equalTo: self.topAnchor, constant: topConstant),
         subView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: bottomConstant)
        ].forEach { $0.isActive = true }
    }

}
