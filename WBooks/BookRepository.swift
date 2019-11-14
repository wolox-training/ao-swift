//
//  BookRepository.swift
//  WBooks
//
//  Created by Andy Francisco Olarte Cardona on 12/11/19.
//  Copyright © 2019 Wolox. All rights reserved.
//

import UIKit
import Alamofire

enum BookError: Error {
    case decodeError
}

private struct Constants {
    static let url: String = "https://swift-training-backend.herokuapp.com/books"
}

public class BookRepository {
    
    public func fetchBooks(onSuccess: @escaping ([Book]) -> Void, onError: @escaping (Error) -> Void) {
        let url = URL(string: Constants.url)!
        request(url, method: .get).responseJSON { response in
            switch response.result {
            case .success(let value):
                guard let JSONbooks = try? JSONSerialization.data(withJSONObject: value, options: []) else {
                    onError(BookError.decodeError)
                    return
                }
                guard let books = try? JSONDecoder().decode([Book].self, from: JSONbooks) else {
                    onError(BookError.decodeError)
                    return
                }
                onSuccess(books)
            case .failure(let error):
                onError(error)
            }
        }
    }
    
}
