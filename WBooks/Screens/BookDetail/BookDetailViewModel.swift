//
//  BookDetailViewModel.swift
//  WBooks
//
//  Created by Andy Francisco Olarte Cardona on 19/11/19.
//  Copyright © 2019 Wolox. All rights reserved.
//

import UIKit
import ReactiveCocoa
import ReactiveSwift
import Networking

class  BookDetailViewModel {
    private var bookComments: MutableProperty<[Comment]> = MutableProperty([])
    var bookRepository = RepositoryBuilder.getDefaultBookRepository()

    let bookModel: Book!

    init(with book: Book) {
        bookModel = book
    }

    func fetchComments(book: Book) -> SignalProducer<[Comment], RepositoryError> {
        return self.bookRepository.fetchComments(book: book).on(failed: { [unowned self] _ in self.bookComments.value = [] }, value: { [unowned self] value in self.bookComments.value = value })
    }

    func getnumberOfCells() -> Int {
        return bookComments.value.count
    }

    func getCellComment(at indexPath: IndexPath) -> Comment {
        return bookComments.value[indexPath.row]
    }
    
//    func rentBook(book: Book) -> SignalProducer<Void, RepositoryError> {
//        return bookRepository.rentBook(book: book)
//    }
}
