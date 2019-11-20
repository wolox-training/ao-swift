//
//  BookDetailViewModel.swift
//  WBooks
//
//  Created by Andy Francisco Olarte Cardona on 19/11/19.
//  Copyright © 2019 Wolox. All rights reserved.
//

import Foundation
import UIKit

class  BookDetailViewModel {

    private var bookComment: [Comment] = [] {
        didSet {
            onUpdate?()
        }
    }

    let bookModel: Book!
    
    init(with book: Book) {
        bookModel = book
    }

    var onUpdate: (() -> Void)?
}
