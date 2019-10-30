//
//  BookListViewController.swift
//  WBooks
//
//  Created by Andy Francisco Olarte Cardona on 29/10/19.
//  Copyright © 2019 Wolox. All rights reserved.
//

import UIKit

class BookListController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var bookList: [Book] = []
    private let _view: BookListView = BookListView.loadFromNib()!
    
    override func loadView() {
        view = _view
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        _view.bookListTable.delegate = self
        _view.bookListTable.dataSource = self
        _view.bookListTable.contentInset = UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0)
        _view.bookListTable.register(cell: BookCell.self)
        bookList = BookItemInfo.sharedInstance.getBookList()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bookList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let itemCell: BookCell = tableView.dequeue(cell: BookCell.self) else { return UITableViewCell() }
        let book: Book = bookList[indexPath.row]
        itemCell.configureCell(with: book)
        return itemCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

}
