//
//  BookRepository.swift
//  WBooks
//
//  Created by Andy Francisco Olarte Cardona on 12/11/19.
//  Copyright © 2019 Wolox. All rights reserved.
//

import UIKit
import Alamofire
import Result
import Networking
import Argo
import ReactiveSwift

enum BookError: Error {
    case decodeError
}

protocol BookRepositoryType {

    func fetchBooks() -> SignalProducer<[Book], RepositoryError>
    func fetchComments(book: Book) -> SignalProducer<[Comment], RepositoryError>
    func rentBook(book: Book) -> SignalProducer<BookDetailRent, RepositoryError>

}

public class BookRepository: AbstractRepository, BookRepositoryType {
    
    private static let userId = 2
    private static let fetchBooksPath = "books"
    private static let fetchCommentsPath = "books/$book_id/comments"
    private static let rentBookPath = "/users/\(userId)//rents"
    
    func fetchBooks() -> SignalProducer<[Book], RepositoryError> {
        return performRequest(method: .get, path: BookRepository.fetchBooksPath) { json in
            return decode(json).toResult()
        }
    }
    
    func fetchComments(book: Book) -> SignalProducer<[Comment], RepositoryError> {
        let path = BookRepository.fetchCommentsPath.replacingOccurrences(of: "$book_id", with: String(book.id))
        return performRequest(method: .get, path: path) {
            decode($0).toResult()
        }
    }
    
    func rentBook(book: Book) -> SignalProducer<BookDetailRent, RepositoryError> {
        let params: [String: Any] = ["userID": BookRepository.userId, "bookID": book.id, "from": Date.getDate(with: Date()), "to": Date.getDate(with: Calendar.current.date(byAdding: .day, value: 1, to: Date())!)]
        return performRequest(method: .post, path: BookRepository.rentBookPath, parameters: params) { _ in
            Result(value: ())
        }
    }

}
