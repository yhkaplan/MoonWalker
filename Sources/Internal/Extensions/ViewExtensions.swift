//
//  ViewExtensions.swift
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
        bottomConstant: CGFloat = 0.0,
        useSafeAreaLayoutGuide: Bool = false
    ) {
        addSubview(subView)
        subView.translatesAutoresizingMaskIntoConstraints = false

        var constraints: [NSLayoutConstraint] = []

        // TODO: optimize this w/ wrapper func
        if #available(iOS 11.0, *) {
            if useSafeAreaLayoutGuide {
                constraints = [
                    subView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: leadingConstant),
                    subView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: trailingConstant),
                    subView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: topConstant),
                    subView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: bottomConstant)
                ]
            } else {
                constraints = [
                    subView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: leadingConstant),
                    subView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: trailingConstant),
                    subView.topAnchor.constraint(equalTo: topAnchor, constant: topConstant),
                    subView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: bottomConstant)
                ]

            }
        } else {
            constraints = [
                subView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: leadingConstant),
                subView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: trailingConstant),
                subView.topAnchor.constraint(equalTo: topAnchor, constant: topConstant),
                subView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: bottomConstant)
            ]
        }

        NSLayoutConstraint.activate(constraints)
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

        var constraints: [NSLayoutConstraint] = []

        if #available(iOS 11.0, *) {
            constraints = [
                subView.safeAreaLayoutGuide.heightAnchor.constraint(equalToConstant: height),
                subView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: leadingConstant),
                subView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: trailingConstant),
                subView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: bottomConstant)
            ]
        } else {
            constraints = [
                subView.heightAnchor.constraint(equalToConstant: height),
                subView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: leadingConstant),
                subView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: trailingConstant),
                subView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: bottomConstant)
            ]
        }

        NSLayoutConstraint.activate(constraints)
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

        var constraints: [NSLayoutConstraint] = []

        if #available(iOS 11.0, *) {
            constraints = [
                subView.safeAreaLayoutGuide.heightAnchor.constraint(equalToConstant: height),
                subView.safeAreaLayoutGuide.widthAnchor.constraint(equalToConstant: width),
                subView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: leadingConstant),
                subView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: bottomConstant)
            ]
        } else {
            constraints = [
                subView.heightAnchor.constraint(equalToConstant: height),
                subView.widthAnchor.constraint(equalToConstant: width),
                subView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: leadingConstant),
                subView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: bottomConstant)
            ]
        }

        NSLayoutConstraint.activate(constraints)
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

        var constraints: [NSLayoutConstraint] = []

        if #available(iOS 11.0, *) {
            constraints = [
                subView.safeAreaLayoutGuide.heightAnchor.constraint(equalToConstant: height),
                subView.safeAreaLayoutGuide.widthAnchor.constraint(equalToConstant: width),
                subView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: trailingConstant),
                subView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: bottomConstant)
            ]
        } else {
            constraints = [
                subView.heightAnchor.constraint(equalToConstant: height),
                subView.widthAnchor.constraint(equalToConstant: width),
                subView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: trailingConstant),
                subView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: bottomConstant)
            ]
        }

        NSLayoutConstraint.activate(constraints)
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

        var constraints: [NSLayoutConstraint] = []

        if #available(iOS 11.0, *) {
            constraints = [
                subView.safeAreaLayoutGuide.heightAnchor.constraint(equalToConstant: height),
                subView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: leadingConstant),
                subView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: trailingConstant),
                subView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: topConstant)
            ]
        } else {
            constraints = [
                subView.heightAnchor.constraint(equalToConstant: height),
                subView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: leadingConstant),
                subView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: trailingConstant),
                subView.topAnchor.constraint(equalTo: topAnchor, constant: topConstant)
            ]
        }

        NSLayoutConstraint.activate(constraints)
    }

    func addSubviewWithConstraints(
        _ subView: UIView,
        centerXConstant: CGFloat = 0.0,
        bottomConstant: CGFloat = -20.0
    ) {
        addSubview(subView)
        subView.translatesAutoresizingMaskIntoConstraints = false

        var constraints: [NSLayoutConstraint] = []

        if #available(iOS 11.0, *) {
            constraints = [
                subView.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor, constant: centerXConstant),
                subView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: bottomConstant)
            ]
        } else {
            constraints = [
                subView.centerXAnchor.constraint(equalTo: centerXAnchor, constant: centerXConstant),
                subView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: bottomConstant)
            ]
        }

        NSLayoutConstraint.activate(constraints)
    }

}
