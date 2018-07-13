//
//  ParentViewController.swift
//  MoonWalker
//
//  Created by josh on 2018/06/20.
//

import UIKit

final class ParentViewController: UIViewController {

    // MARK: - Properties
    private var pageVC = UIPageViewController()
    private var pageVCDataSource: PageVCDataSource!
    private var pageVCDelegate = PageVCDelegate() //TODO: should be weak?
    private var viewModel = MWParentViewModel()

    init(
        pageVC: UIPageViewController,
        dataSource: PageVCDataSource,
        delegate: PageVCDelegate,
        viewModel: MWParentViewModel = MWParentViewModel()
    ) {
        super.init(nibName: nil, bundle: nil)

        self.pageVC = pageVC
        self.pageVCDataSource = dataSource
        self.pageVCDelegate = delegate
        self.viewModel = viewModel
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("Not implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        embed(childVC: pageVC)
        addButtons()
    }

}

// Button actions

private extension ParentViewController {

    typealias CompletionHandler = () -> Void

    @objc func dismissSelf(completion: CompletionHandler?) {
        dismiss(animated: true, completion: completion) //TODO: passing completion may cause crash
    }

    @objc func showNextPage() {
        guard
            let currentVC = pageVC.viewControllers?.first,
            let nextVC = pageVCDataSource.pageViewController(pageVC, viewControllerAfter: currentVC)
        else { return }

        pageVC.setViewControllers([nextVC], direction: .forward, animated: true)
    }
}

// MARK: - Private methods

private extension ParentViewController {

    func addButtons() {
        [viewModel.leftButton, viewModel.rightButton]
            .compactMap { $0 }
            .forEach { buttonModel in
                let button = UIButton()
                button.setTitle(buttonModel.label, for: .normal)
                button.setTitleColor(buttonModel.labelColor, for: .normal)
                if let image = buttonModel.backgroundImage {
                    button.setBackgroundImage(image, for: .normal)
                }
                buttonModel.layout.addChildViewToParent(childView: button, parentView: view)

                // TODO: implementing this in static way first, to impelement in configurable way
                // as MWButton property
                if button.titleLabel?.text == "Next" {
                    button.addTarget(self, action: #selector(showNextPage), for: .touchUpInside)
                } else {
                    button.addTarget(self, action: #selector(dismissSelf(completion:)), for: .touchUpInside)
                }
            }
    }

}
