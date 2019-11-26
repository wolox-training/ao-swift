//
//  Comment.swift
//  WBooks
//
//  Created by Andy Francisco Olarte Cardona on 20/11/19.
//  Copyright © 2019 Wolox. All rights reserved.
//

import Foundation
import UIKit

public struct Comment: Codable {
    let id: Int
    let content: String
    let book: Book
    let user: BookDetailUser

    enum CodingKeys: String, CodingKey {
        case id
        case content
        case book
        case user
    }
}
