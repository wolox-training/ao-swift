//
//  RentBook.swift
//  WBooks
//
//  Created by Andy Francisco Olarte Cardona on 22/11/19.
//  Copyright © 2019 Wolox. All rights reserved.
//

import UIKit
import Argo
import Curry
import Runes

struct BookDetailRent {
    
    let id: Int
    let from: String
    let to: String
    let bookID: Int
    let userID: Int
}

extension BookDetailRent: Argo.Decodable {
    
    static func decode(_ json: JSON) -> Decoded<BookDetailRent> {
        return curry(BookDetailRent.init)
            <^> json <| "id"
            <*> json <| "from"
            <*> json <| "to"
            <*> json <| "bookID"
            <*> json <| "userID"
    }
}
