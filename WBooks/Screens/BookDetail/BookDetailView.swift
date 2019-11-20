//
//  BookDetailView.swift
//  WBooks
//
//  Created by Andy Francisco Olarte Cardona on 19/11/19.
//  Copyright © 2019 Wolox. All rights reserved.
//

import UIKit
import WolmoCore

class BookDetailView: UIView, NibLoadable {
    @IBOutlet weak var bookDetailImg: UIImageView!
    @IBOutlet weak var bookDetailTitle: UILabel! {
        didSet {
            bookDetailTitle.lineBreakMode = .byWordWrapping
        }
    }
    @IBOutlet weak var bookDetailStatus: UILabel!
    @IBOutlet weak var bookDetailAuthor: UILabel!
    @IBOutlet weak var bookDetailYear: UILabel!
    @IBOutlet weak var bookDetailGenre: UILabel!
    @IBOutlet weak var bookDetailBtnWishlist: UIButton! {
        didSet {
            bookDetailBtnWishlist.layer.cornerRadius = 20
            bookDetailBtnWishlist.layer.borderWidth = 1
            bookDetailBtnWishlist.layer.borderColor = UIColor.cerulean().cgColor
            bookDetailBtnWishlist.setTitleColor(.cerulean(), for: .normal)
        }
    }

    func initBookDetailView() {
        backgroundColor = .backgroundPolar()
    }
}
