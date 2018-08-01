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

//TODO: move
/// Delegate to cause side effects on page changes
public protocol MWPageChangeDelegate: AnyObject {
    func pageWillChange(to toIndex: Int, from fromIndex: Int)
    func pageDidChange(to toIndex: Int, from fromIndex: Int)
}

public protocol MWButtonActionDelegate: AnyObject {
    func buttonWasTapped(at index: Int)
}

// Internal page change delegate
protocol PageChangeDelegate: AnyObject {
    func pageWillChange(to index: Int)
    func pageDidChange(to toIndex: Int, from fromIndex: Int)
}

final class ParentViewController: UIViewController {

    // MARK: - Properties

    private var pageVC = UIPageViewController()
    private var pageVCDataSource = PageVCDataSource(childVCs: [])
    // swiftlint:disable:next weak_delegate
    private var pageVCDelegate = PageVCDelegate()
    private var viewModel = MWParentViewModel()

    private weak var pageChangeDelegate: MWPageChangeDelegate?
    private weak var buttonActionDelegate: MWButtonActionDelegate?

    private lazy var leftButton = UIButton()
    private lazy var rightButton = UIButton()

    private lazy var pageControl = UIPageControl()

    // MARK: - Lifetime

    init(
        pageVC: UIPageViewController,
        dataSource: PageVCDataSource,
        delegate: PageVCDelegate,
        parentViewModel: MWParentViewModel,
        pageChangeDelegate: MWPageChangeDelegate?,
        buttonActionDelegate: MWButtonActionDelegate?
    ) {
        super.init(nibName: nil, bundle: nil)

        self.pageVC = pageVC
        self.pageVCDataSource = dataSource
        self.pageVCDelegate = delegate
        self.viewModel = parentViewModel
        self.pageChangeDelegate = pageChangeDelegate
        self.buttonActionDelegate = buttonActionDelegate
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("Not implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        embed(childVC: pageVC)
        addButtons()
        addPageControl()
    }

}

// MARK: - PageControlUpdateDelegate

extension ParentViewController: PageChangeDelegate {

    func pageWillChange(to index: Int) {
        let currentIndex = pageVCDataSource.presentationIndex(for: pageVC)
        pageChangeDelegate?.pageWillChange(to: index, from: currentIndex)
    }

    func pageDidChange(to toIndex: Int, from fromIndex: Int) {
        updatePageControl(with: toIndex)
        updateButtonLabels()

        pageChangeDelegate?.pageDidChange(to: toIndex, from: fromIndex)
    }

    private func updateButtonLabels() {
        guard pageVCDataSource.isLastPage(for: pageVC) else { return }

        if let newLabel = viewModel.leftButton?.labelOnLastPage {
            leftButton.setTitle(newLabel, for: .normal)
            // This may be needed: leftButton.setTitleColor(buttonModel.labelColor, for: .normal)
        }

        if let newLabel = viewModel.rightButton?.labelOnLastPage {
            rightButton.setTitle(newLabel, for: .normal)
            // This may be needed: rightButton.setTitleColor(buttonModel.labelColor, for: .normal)
        }
    }

    private func updatePageControl(with index: Int) {
        pageControl.currentPage = index
        pageControl.updateCurrentPageDisplay()
    }
}

// MARK: - Button actions

//TODO: move this to public class
extension ParentViewController: MWActionDelegate {

    @objc func dismissSelf() {
        dismiss(animated: true) { }//TODO: call delegateWasSkipped here
    }

    @objc func delegateButtonAction() {
        let currentIndex = pageVCDataSource.presentationIndex(for: pageVC)
        buttonActionDelegate?.buttonWasTapped(at: currentIndex)
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

        let previousIndex = pageVCDataSource.presentationIndex(for: pageVC)

        pageVC.setViewControllers([viewController], direction: .forward, animated: true) { isFinished in
            guard isFinished else { return }

            //TODO: this code is needed both here and in the delegate
            let index = self.pageVCDataSource.presentationIndex(for: self.pageVC)
            self.pageDidChange(to: index, from: previousIndex)
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

                case .delegateButtonAction:
                    button.addTarget(self, action: #selector(delegateButtonAction), for: .touchUpInside)

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
