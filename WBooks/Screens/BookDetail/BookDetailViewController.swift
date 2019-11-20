//
//  BookDetailViewController.swift
//  WBooks
//
//  Created by Andy Francisco Olarte Cardona on 19/11/19.
//  Copyright © 2019 Wolox. All rights reserved.
//

import UIKit
import WolmoCore

class BookDetailViewController: UIViewController {

    private let _view: BookDetailView = BookDetailView.loadFromNib()!
    private var bookDetailViewModel: BookDetailViewModel!

    convenience init(with bookDetail: BookDetailViewModel) {
        self.init()
        bookDetailViewModel = bookDetail
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "BOOK_DETAIL".localized()
        _view.initBookDetailView(with: bookDetailViewModel.bookModel)
        navigationItem.leftBarButtonItem = UIBarButtonItem.backButton(for: self, action: #selector(onPressBack))
    }

    override func loadView() {
        view = _view
    }

    @objc func onPressBack() {
        navigationController?.popViewController(animated: true)
    }

}
