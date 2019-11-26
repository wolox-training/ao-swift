//
//  RentBook.swift
//  WBooks
//
//  Created by Andy Francisco Olarte Cardona on 22/11/19.
//  Copyright © 2019 Wolox. All rights reserved.
//

import Foundation
import UIKit

public struct BookDetailRent: Codable {

    let id: Int
    let from: String
    let to: String
    let bookID: Int
    let userID: Int

    enum CodingKeys: String, CodingKey {
        case id
        case from
        case to
        case bookID
        case userID
    }
}
