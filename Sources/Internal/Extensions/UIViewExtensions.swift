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
        addSubview(subView)
        subView.translatesAutoresizingMaskIntoConstraints = false

        [subView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: leadingConstant),
         subView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: trailingConstant),
         subView.topAnchor.constraint(equalTo: topAnchor, constant: topConstant),
         subView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: bottomConstant)
        ].forEach { $0.isActive = true }
    }

    func addSubviewWithConstraints(
        _ subView: UIView,
        height: CGFloat,
        leadingConstant: CGFloat = 0.0,
        trailingConstant: CGFloat = 0.0,
        bottomConstant: CGFloat = 0.0
    ) {
        addSubview(subView)
        subView.translatesAutoresizingMaskIntoConstraints = false

        [subView.heightAnchor.constraint(equalToConstant: height),
         subView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: leadingConstant),
         subView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: trailingConstant),
         subView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: bottomConstant)
        ].forEach { $0.isActive = true }
    }

    func addSubviewWithConstraints(
        _ subView: UIView,
        height: CGFloat,
        width: CGFloat,
        leadingConstant: CGFloat,
        bottomConstant: CGFloat
    ) {
        addSubview(subView)
        subView.translatesAutoresizingMaskIntoConstraints = false

        [subView.heightAnchor.constraint(equalToConstant: height),
         subView.widthAnchor.constraint(equalToConstant: width),
         subView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: leadingConstant),
         subView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: bottomConstant)
        ].forEach { $0.isActive = true }
    }

    func addSubviewWithConstraints(
        _ subView: UIView,
        height: CGFloat,
        width: CGFloat,
        trailingConstant: CGFloat,
        bottomConstant: CGFloat
    ) {
        addSubview(subView)
        subView.translatesAutoresizingMaskIntoConstraints = false

        [subView.heightAnchor.constraint(equalToConstant: height),
         subView.widthAnchor.constraint(equalToConstant: width),
         subView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: trailingConstant),
         subView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: bottomConstant)
        ].forEach { $0.isActive = true }
    }

    func addSubviewWithConstraints(
        _ subView: UIView,
        height: CGFloat,
        leadingConstant: CGFloat = 0.0,
        trailingConstant: CGFloat = 0.0,
        topConstant: CGFloat = 0.0
    ) {
        addSubview(subView)
        subView.translatesAutoresizingMaskIntoConstraints = false

        [subView.heightAnchor.constraint(equalToConstant: height),
         subView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: leadingConstant),
         subView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: trailingConstant),
         subView.topAnchor.constraint(equalTo: topAnchor, constant: topConstant)
        ].forEach { $0.isActive = true }
    }

    func addSubviewWithConstraints(
        _ subView: UIView,
        centerXConstant: CGFloat = 0.0,
        bottomConstant: CGFloat = -20.0
    ) {
        addSubview(subView)
        subView.translatesAutoresizingMaskIntoConstraints = false

        [subView.centerXAnchor.constraint(equalTo: centerXAnchor, constant: centerXConstant),
         subView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: bottomConstant)
        ].forEach { $0.isActive = true }
    }

}
