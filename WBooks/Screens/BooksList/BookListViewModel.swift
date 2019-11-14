//
//  BookListViewModel.swift
//  WBooks
//
//  Created by Andy Francisco Olarte Cardona on 7/11/19.
//  Copyright © 2019 Wolox. All rights reserved.
//

import UIKit

class BookListViewModel {
    var bookRepository = BookRepository()
    
    var bookList: [Book] = [] {
        didSet {
            onUpdate?()
        }
    }
    
    var onUpdate: (() -> Void)?
    
    func getnumberOfCells() -> Int {
        return bookList.count
    }
    
    func getBookList() {
        bookRepository.fetchBooks(onSuccess: { (books) in
            self.bookList = books
        }, onError: { (error) in
            print(error)
        })
    }
    
    func getCellBook(at indexPath: IndexPath) -> Book {
        return bookList[indexPath.row]
    }

}
