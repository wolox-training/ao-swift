//
//  BookListView.swift
//  WBooks
//
//  Created by Andy Francisco Olarte Cardona on 29/10/19.
//  Copyright © 2019 Wolox. All rights reserved.
//

import UIKit
import WolmoCore

class BookListView: UIView, NibLoadable {

    @IBOutlet weak var bookListTable: UITableView! {
        didSet {
            bookListTable.backgroundColor = .backgroundPolar()
            bookListTable.separatorStyle = .none
        }
    }

}
