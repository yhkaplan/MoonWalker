//
//  ParentViewController.swift
//  MoonWalker
//
//  Created by josh on 2018/06/20.
//

import UIKit

protocol PageControlUpdateDelegate: AnyObject {
    func updatePageControl(to index: Int)
}

final class ParentViewController: UIViewController {

    // MARK: - Properties

    private var pageVC = UIPageViewController()
    private var pageVCDataSource: PageVCDataSource!
    private var pageVCDelegate = PageVCDelegate() //TODO: should be weak?
    private var viewModel = MWParentViewModel()

    private lazy var pageControl = UIPageControl()

    // MARK: - Lifetime

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
        addPageControl()
    }

}

// MARK: - PageControlUpdateDelegate

extension ParentViewController: PageControlUpdateDelegate {

    func updatePageControl(to index: Int) {
        pageControl.currentPage = index
        pageControl.updateCurrentPageDisplay()
    }

}

// MARK: - Button actions

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

        pageVC.setViewControllers([nextVC], direction: .forward, animated: true) { isFinished in
            guard isFinished else { return }

            //TODO: this code is needed both here and in the delegate
            let index = self.pageVCDataSource.presentationIndex(for: self.pageVC)
            self.updatePageControl(to: index)
        }
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

    func addPageControl() {
        guard let pageControlModel = viewModel.pageControl else { return }

        // Set delegate to receive updates
        pageVCDelegate.pageControlUpdateDelegate = self

        pageControl.currentPageIndicatorTintColor = pageControlModel.currentPageIndicatorTintColor
        pageControl.pageIndicatorTintColor = pageControlModel.pageIndicatorTintColor

        pageControl.currentPage = 0
        pageControl.numberOfPages = pageVCDataSource.presentationCount(for: pageVC)

        //        pageControl.updateCurrentPageDisplay() TODO: may need this

        pageControlModel.layout.addChildViewToParent(childView: pageControl, parentView: view)
    }

}
