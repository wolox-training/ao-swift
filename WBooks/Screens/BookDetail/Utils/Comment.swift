//
//  Comment.swift
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

struct Comment {
    let id: Int
    let content: String
    let book: Book
    let user: BookDetailUser
}

extension Comment: Argo.Decodable {
    
    static func decode(_ json: JSON) -> Decoded<Comment> {
        return curry(Comment.init)
            <^> json <| "id"
            <*> json <| "content"
            <*> json <| "book"
            <*> json <| "user"
    }
}
