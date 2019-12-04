//
//  BookDetailView.swift
//  WBooks
//
//  Created by Andy Francisco Olarte Cardona on 19/11/19.
//  Copyright © 2019 Wolox. All rights reserved.
//

import UIKit
import WolmoCore
import Kingfisher

class BookDetailView: UIView, NibLoadable {
    @IBOutlet weak var detailView: DetailView!
    @IBOutlet weak var bookDetailTableComments: UITableView!

    func initBookDetailView() {
        backgroundColor = .backgroundPolar()
        detailView.layer.cornerRadius = 5
    }

    func initBookDetailTableComment() {
        bookDetailTableComments.separatorStyle = .none
    }
}
