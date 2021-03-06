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
    @IBOutlet weak var bookDetailContainer: UIView!
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
    @IBOutlet weak var bookDetailBtnRent: UIButton! {
        didSet {
            bookDetailBtnRent.layer.cornerRadius = 20
            bookDetailBtnRent.layer.borderWidth = 1
            bookDetailBtnRent.clipsToBounds = true
        }
    }
    @IBOutlet weak var bookDetailTableComments: UITableView!

    func initBookDetailView(with bookDetail: Book) {
        backgroundColor = .backgroundPolar()
        bookDetailContainer.layer.cornerRadius = 5
        if let url = URL(string: bookDetail.image) {
            let resource = ImageResource(downloadURL: url)
            bookDetailImg.kf.indicatorType = .activity
            bookDetailImg.kf.setImage(with: resource)
        } else {
            bookDetailImg.image = UIImage.bookDefault
        }
        bookDetailTitle.text = bookDetail.title
        bookDetailStatus.text = bookDetail.bookStatus.translateBookStatus()
        bookDetailAuthor.text = bookDetail.author
        bookDetailYear.text = bookDetail.year
        bookDetailGenre.text = bookDetail.genre
        if bookDetail.bookStatus.isBookAvailable() {
            bookDetailStatus.textColor = .green
            bookDetailBtnRent.layer.borderColor = UIColor.cerulean().cgColor
            bookDetailBtnRent.setCeruleanGradient()
        } else {
            bookDetailStatus.textColor = .red
            bookDetailBtnRent.layer.borderColor = UIColor.grey().cgColor
            bookDetailBtnRent.setGreyGradient()
        }
    }

    func initBookDetailTableComment() {
        bookDetailTableComments.separatorStyle = .none
    }
}
