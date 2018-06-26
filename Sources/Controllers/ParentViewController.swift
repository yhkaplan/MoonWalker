//
//  ParentViewController.swift
//  MoonWalker
//
//  Created by josh on 2018/06/20.
//

import UIKit

final class ParentViewController: UIViewController {

    // MARK: - Properties
    private var coordinator: MoonWalkerCoordinator = MoonWalkerCoordinator()

    init(coordinator: MoonWalkerCoordinator) {
        super.init(nibName: nil, bundle: nil)

        self.coordinator = coordinator
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("Not implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()


    }

}

// MARK: - Private methods

private extension ParentViewController {

}
