//
//  BookDetailViewController.swift
//  WBooks
//
//  Created by Andy Francisco Olarte Cardona on 19/11/19.
//  Copyright © 2019 Wolox. All rights reserved.
//

import UIKit
import WolmoCore

class BookDetailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    private let _view: BookDetailView = BookDetailView.loadFromNib()!
    private let _detailView: DetailView = DetailView.loadFromNib()!
    private var bookDetailViewModel: BookDetailViewModel!

    convenience init(with bookDetail: BookDetailViewModel) {
        self.init()
        bookDetailViewModel = bookDetail
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        initBookDetailViewModel()
        configureView()
        configureNavBar()
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        _detailView.initDetailView(with: bookDetailViewModel.bookModel)
    }

    override func loadView() {
        _view.detailView.addSubview(_detailView)
        view = _view
    }

    private func initBookDetailViewModel() {
        bookDetailViewModel.fetchComments(book: bookDetailViewModel.bookModel).startWithResult { [unowned self] result in
            switch result {
            case .success:
                self._view.bookDetailTableComments.reloadData()
            case .failure(let error):
                self.showMessage(message: error.localizedDescription)
            }
        }
    }

    private func configureView() {
        _view.bookDetailTableComments.delegate = self
        _view.bookDetailTableComments.dataSource = self
        _view.bookDetailTableComments.contentInset = UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0)
        _view.bookDetailTableComments.register(cell: CommentTableViewCell.self)
        _detailView.detailBtnRent.reactive.controlEvents(.touchUpInside).observeValues { _ in self.rentBook() }
        _view.initBookDetailTableComment()
    }

    private func configureNavBar() {
        title = "BOOK_DETAIL".localized()
        _view.initBookDetailView()
        navigationItem.leftBarButtonItem = UIBarButtonItem.backButton(for: self, action: #selector(onPressBack))
    }

    @objc func onPressBack() {
        navigationController?.popViewController(animated: true)
    }

    @objc private func rentBook() {
        guard bookDetailViewModel.bookModel.bookStatus == .available else {
            showMessage(message: "RENT_UNAVAILABLE".localized(withArguments: bookDetailViewModel.bookModel.bookStatus.translateBookStatus()))
            return
        }
//        bookDetailViewModel.rentBook(book: bookDetailViewModel.bookModel, onSuccessRent: { (_) in
//            self.showMessage(message: "BOOK_RESERVED".localized())
//        }, onFailureRent: { (error) in
//            self.showMessage(message: error.localizedDescription)
//        })
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bookDetailViewModel.getnumberOfCells()
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let itemComment: CommentTableViewCell = tableView.dequeue(cell: CommentTableViewCell.self) else { return UITableViewCell() }
        let comment: Comment = bookDetailViewModel.getCellComment(at: indexPath)
        itemComment.configureComment(with: comment)
        return itemComment
    }

}
