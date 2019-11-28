//
//  Book.swift
//  WBooks
//
//  Created by Andy Francisco Olarte Cardona on 29/10/19.
//  Copyright © 2019 Wolox. All rights reserved.
//

import UIKit
import WolmoCore
import Argo
import Curry
import Runes

struct Book {
    
    let id: Int
    let title: String
    let author: String
    let genre: String
    let status: String
    let year: String
    let image: String
    var bookStatus: BookStatus {
        return BookStatus(rawValue: status) ?? .unknown
    }
    
    enum CodingKeys: String, CodingKey {
        case id
        case title
        case author
        case genre
        case status
        case year
        case image
    }
}

extension Book: Argo.Decodable {
    
    static func decode(_ json: JSON) -> Decoded<Book> {
        return curry(Book.init)
            <^> json <| "id"
            <*> json <| "title"
            <*> json <| "author"
            <*> json <| "status"
            <*> json <| "genre"
            <*> json <| "year"
            <*> json <| "image"
    }
}

enum BookStatus: String, CaseIterable {
    case rented
    case inYourHands
    case available
    case unknown
    
    func translateBookStatus() -> String {
        switch self {
        case .available:
            return "AVAILABLE".localized()
        default:
            return "UNAVAILABLE".localized()
        }
    }
    
    func isBookAvailable() -> Bool {
        return self == .available
    }
    
}
