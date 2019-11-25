//
//  BookDetailViewModel.swift
//  WBooks
//
//  Created by Andy Francisco Olarte Cardona on 19/11/19.
//  Copyright © 2019 Wolox. All rights reserved.
//

import Foundation
import UIKit

class  BookDetailViewModel {
    var bookRepository = BookRepository()

    private var bookComments: [Comment] = [] {
        didSet {
            onUpdate?()
        }
    }

    let bookModel: Book!

    init(with book: Book) {
        bookModel = book
    }

    var onUpdate: (() -> Void)?

    func fetchComments(for book: Book) {
        bookRepository.fetchComments(book: book, onSuccess: { (comments) in
            self.bookComments = comments
        }, onError: { (error) in
            print(error.localizedDescription)
        })
    }

    func getnumberOfCells() -> Int {
        return bookComments.count
    }

    func getCellComment(at indexPath: IndexPath) -> Comment {
        return bookComments[indexPath.row]
    }
    
    func rentBook(book: Book, onSuccessRent: @escaping (BookDetailRent) -> Void, onFailureRent: @escaping (Error) -> Void) {
        bookRepository.rentBook(book: book, onSuccess: onSuccessRent, onError: onFailureRent)
    }
}
