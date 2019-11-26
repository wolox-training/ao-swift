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
    var bookStatus: BookStatus {
        return BookStatus(rawValue: status) ?? .unknown
    }

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
