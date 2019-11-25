//
//  User.swift
//  WBooks
//
//  Created by Andy Francisco Olarte Cardona on 20/11/19.
//  Copyright © 2019 Wolox. All rights reserved.
//

import Foundation
import UIKit

public struct BookDetailUser: Codable {

    let id: Int
    let username: String
    let image: String

    enum CodingKeys: String, CodingKey {
        case id
        case username
        case image
    }
}
