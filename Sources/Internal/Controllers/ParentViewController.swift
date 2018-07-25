//
//  ParentViewController.swift
//  MoonWalker
//
//  Created by josh on 2018/06/20.
//

import UIKit

/*
 * Calling this delegate allows you to dismiss the walkthrough
 * or show the next page at will
 */
//TODO: move this somewhere else and apply to public class
public protocol MWActionDelegate: AnyObject {
    func dismissSelf()
    func showNextPage()
}

protocol PageChangeDelegate: AnyObject {
    func pageWillChange(to index: Int)
    func pageDidChange(to index: Int)
}

final class ParentViewController: UIViewController {

    // MARK: - Properties

    private var pageVC = UIPageViewController()
    private var pageVCDataSource = PageVCDataSource(childVCs: [])
    // swiftlint:disable:next weak_delegate
    private var pageVCDelegate = PageVCDelegate()
    private var viewModel = MWParentViewModel()

    private var customActionAfterLastPage: MWCustomAction?

    private lazy var leftButton = UIButton()
    private lazy var rightButton = UIButton()

    private lazy var pageControl = UIPageControl()

    // MARK: - Lifetime

    init(
        pageVC: UIPageViewController,
        dataSource: PageVCDataSource,
        delegate: PageVCDelegate,
        viewModel: MWParentViewModel,
        customActionAfterLastPage: MWCustomAction?
    ) {
        super.init(nibName: nil, bundle: nil)

        self.pageVC = pageVC
        self.pageVCDataSource = dataSource
        self.pageVCDelegate = delegate
        self.viewModel = viewModel
        self.customActionAfterLastPage = customActionAfterLastPage
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

extension ParentViewController: PageChangeDelegate {

    func pageWillChange(to index: Int) {
        guard index == 0 else { return }

        customActionAfterLastPage?()
    }

    func pageDidChange(to index: Int) {
        updatePageControl(with: index)
        updateIsHiddenViews()
    }

    private func updatePageControl(with index: Int) {
        pageControl.currentPage = index
        pageControl.updateCurrentPageDisplay()
    }

    private func updateIsHiddenViews() {
        guard pageVCDataSource.isLastPage(for: pageVC) else { return }

        if let leftButtonModel = viewModel.leftButton {
            leftButton.isHidden = leftButtonModel.isHiddenOnLastScreen
        }

        if let rightButtonModel = viewModel.rightButton {
            rightButton.isHidden = rightButtonModel.isHiddenOnLastScreen
        }

        if let pageControlModel = viewModel.pageControl {
            pageControl.isHidden = pageControlModel.isHiddenOnLastScreen
        }
    }
}

// MARK: - Button actions

//TODO: move this to public class
extension ParentViewController: MWActionDelegate {

    @objc func dismissSelf() {
        dismiss(animated: true) { }//TODO: call delegateWasSkipped here
    }

    @objc func beginCustomAction() {
        customActionAfterLastPage?()
    }

    @objc func showNextPage() {
        guard
            let currentVC = pageVC.viewControllers?.first,
            let nextVC = pageVCDataSource.pageViewController(pageVC, viewControllerAfter: currentVC)
        else { return }

        showVC(nextVC)
    }

    private func showVC(_ viewController: UIViewController) {
        if let nextIndex = pageVCDataSource.getNextPageIndex(for: pageVC) {
            pageWillChange(to: nextIndex)
        }

        pageVC.setViewControllers([viewController], direction: .forward, animated: true) { isFinished in
            guard isFinished else { return }

            //TODO: this code is needed both here and in the delegate
            let index = self.pageVCDataSource.presentationIndex(for: self.pageVC)
            self.pageDidChange(to: index)
        }
    }
}


// MARK: - Setup methods

private extension ParentViewController {

    func addButtons() {
        [viewModel.leftButton, viewModel.rightButton]
            .compactMap { $0 }
            .forEach { buttonModel in

                guard let buttonOrientation = buttonModel.layout.buttonOrientation else {
                    return
                }

                let button = UIButton()

                button.setTitle(buttonModel.label, for: .normal)
                button.setTitleColor(buttonModel.labelColor, for: .normal)

                if let image = buttonModel.backgroundImage {
                    button.setBackgroundImage(image, for: .normal)
                }

                buttonModel.layout.addChildViewToParent(childView: button, parentView: view)

                // TODO: implementing this in static way first, to impelement in configurable way
                // as MWButton property
                switch buttonModel.action {
                case .dismissWalkthrough:
                    button.addTarget(self, action: #selector(dismissSelf), for: .touchUpInside)

                case .customActionAfterLastPage:
                    button.addTarget(self, action: #selector(beginCustomAction), for: .touchUpInside)

                case .nextPage:
                    button.addTarget(self, action: #selector(showNextPage), for: .touchUpInside)
                }

                switch buttonOrientation {
                case .left:
                    leftButton = button

                case .right:
                    rightButton = button
                }
            }
    }

    func addPageControl() {
        guard let pageControlModel = viewModel.pageControl else { return }

        pageVCDelegate.pageChangeDelegate = self

        pageControl.currentPageIndicatorTintColor = pageControlModel.currentPageIndicatorTintColor
        pageControl.pageIndicatorTintColor = pageControlModel.pageIndicatorTintColor

        pageControl.currentPage = 0
        pageControl.numberOfPages = pageVCDataSource.viewControllerCount

        pageControlModel.layout.addChildViewToParent(childView: pageControl, parentView: view)
    }

}
