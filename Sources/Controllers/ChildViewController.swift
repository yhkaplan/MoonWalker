//
//  ChildViewController.swift
//  MoonWalker
//
//  Created by josh on 2018/06/20.
//

import UIKit

final class ChildViewController: UIViewController {

    let upperLabel = UILabel()
    let lowerLabel = UILabel()

    var childView: UIView?
    var mainImage: UIImage?
    var backgroundImage: UIImage?

    init(walkthoughView: WalkthroughView) {
        super.init(nibName: nil, bundle: nil)

        upperLabel.text = walkthoughView.upperLabelText
        lowerLabel.text = walkthoughView.lowerLabelText

        childView = walkthoughView.childView
        mainImage = walkthoughView.mainImage
        backgroundImage = walkthoughView.backgroundImage
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
