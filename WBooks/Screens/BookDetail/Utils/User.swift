//
//  User.swift
//  WBooks
//
//  Created by Andy Francisco Olarte Cardona on 20/11/19.
//  Copyright © 2019 Wolox. All rights reserved.
//

import Foundation
import UIKit
import Argo
import Curry
import Runes

struct BookDetailUser {
    
    let id: Int
    let username: String
    let image: String
}

extension BookDetailUser: Argo.Decodable {
    
    static func decode(_ json: JSON) -> Decoded<BookDetailUser> {
        return curry(BookDetailUser.init)
            <^> json <| "id"
            <*> json <| "username"
            <*> json <| "image"
    }
}

