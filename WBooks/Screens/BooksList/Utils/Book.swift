//
//  Book.swift
//  WBooks
//
//  Created by Andy Francisco Olarte Cardona on 29/10/19.
//  Copyright © 2019 Wolox. All rights reserved.
//

import UIKit

public struct Book: Codable {
    let id: Int
    let title: String
    let author: String
    let genre: String
    let year: String
    let image: String
    let status: String

    enum BookKey: String, CodingKey {
        case id
        case title
        case author
        case genre
        case year
        case image
        case status
    }
}
