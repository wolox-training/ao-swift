//
//  BookListViewController.swift
//  WBooks
//
//  Created by Andy Francisco Olarte Cardona on 29/10/19.
//  Copyright © 2019 Wolox. All rights reserved.
//

import UIKit
import WolmoCore

class BookListController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var bookListViewModel = BookListViewModel()
    private let _view: BookListView = BookListView.loadFromNib()!
    
    override func loadView() {
        view = _view
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
        initBookListViewModel()
        configureNavBar()
    }
    
    private func initBookListViewModel() {
        bookListViewModel.onUpdate = { [weak self] () in
            DispatchQueue.main.async {
                self?._view.bookListTable.reloadData()
            }
        }
        bookListViewModel.getBookList()
    }
    
    private func configureTableView() {
        _view.bookListTable.delegate = self
        _view.bookListTable.dataSource = self
        _view.bookListTable.contentInset = UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0)
        _view.bookListTable.register(cell: BookCell.self)
        _view.initBookListTableView()
    }
    
    private func configureNavBar() {
        title = "LIBRARY_TITLE".localized()
        navigationItem.rightBarButtonItem = UIBarButtonItem.searchButton
        navigationItem.leftBarButtonItem = UIBarButtonItem.notificationsButton
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bookListViewModel.getnumberOfCells()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let itemCell: BookCell = tableView.dequeue(cell: BookCell.self) else { return UITableViewCell() }
        let book: Book = bookListViewModel.getCellBook(at: indexPath)
        itemCell.configureCell(with: book)
        return itemCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let book: Book = bookListViewModel.getCellBook(at: indexPath)
        let bookDetailViewModel = BookDetailViewModel(with: book)
        let bookDetailViewController = BookDetailViewController(with: bookDetailViewModel)
        navigationController?.pushViewController(bookDetailViewController, animated: true)
    }

}
