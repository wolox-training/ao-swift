//
//  BookListViewModel.swift
//  WBooks
//
//  Created by Andy Francisco Olarte Cardona on 7/11/19.
//  Copyright © 2019 Wolox. All rights reserved.
//

import UIKit
import ReactiveCocoa
import ReactiveSwift
import Networking

class BookListViewModel {
    private var books: MutableProperty<[Book]> = MutableProperty([])
    var bookRepository = RepositoryBuilder.getDefaultBookRepository()

    func getBooks() -> SignalProducer<[Book], RepositoryError> {
        return self.bookRepository.fetchBooks().on(failed: { [unowned self] _ in self.books.value = [] }, value: { [unowned self] value in
            self.books.value = value
        })
    }
    func getnumberOfCells() -> Int {
        return books.value.count
    }

    func getCellBook(at indexPath: IndexPath) -> Book {
        return books.value[indexPath.row]
    }
    
}
