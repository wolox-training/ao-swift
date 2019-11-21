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
    private var bookDetailViewModel: BookDetailViewModel!

    convenience init(with bookDetail: BookDetailViewModel) {
        self.init()
        bookDetailViewModel = bookDetail
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        initBookDetailViewModel()
        configureTableView()
        configureNavBar()
    }

    override func loadView() {
        view = _view
    }

    private func initBookDetailViewModel() {
        bookDetailViewModel.onUpdate = { [weak self] () in
            DispatchQueue.main.async {
                self?._view.bookDetailTableComments.reloadData()
            }
        }
        bookDetailViewModel.fetchComments(for: bookDetailViewModel.bookModel)
    }

    private func configureTableView() {
        _view.bookDetailTableComments.delegate = self
        _view.bookDetailTableComments.dataSource = self
        _view.bookDetailTableComments.contentInset = UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0)
        _view.bookDetailTableComments.register(cell: CommentTableViewCell.self)
        _view.initBookDetailTableComment()
    }

    private func configureNavBar() {
        title = "BOOK_DETAIL".localized()
        _view.initBookDetailView(with: bookDetailViewModel.bookModel)
        navigationItem.leftBarButtonItem = UIBarButtonItem.backButton(for: self, action: #selector(onPressBack))
    }

    @objc func onPressBack() {
        navigationController?.popViewController(animated: true)
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
