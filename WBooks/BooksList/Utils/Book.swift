//
//  Book.swift
//  WBooks
//
//  Created by Andy Francisco Olarte Cardona on 29/10/19.
//  Copyright © 2019 Wolox. All rights reserved.
//

import UIKit

struct Book: Codable {
    
    var bookCellTitle: String?
    var bookCellAuthor: String?
    
    enum CodingKeys: String, CodingKey {
        case bookCellTitle
        case bookCellAuthor
    }
}
