//
//  DetailView.swift
//  WBooks
//
//  Created by Andy Francisco Olarte Cardona on 2/12/19.
//  Copyright © 2019 Wolox. All rights reserved.
//

import UIKit
import WolmoCore
import Kingfisher

class DetailView: UIView, NibLoadable {
    @IBOutlet weak var detalContainer: UIView!
    @IBOutlet weak var detailImg: UIImageView!
    @IBOutlet weak var detailTitle: UILabel! {
        didSet {
            detailTitle.lineBreakMode = .byWordWrapping
        }
    }
    @IBOutlet weak var detailStatus: UILabel!
    @IBOutlet weak var detailAuthor: UILabel!
    @IBOutlet weak var detailYear: UILabel!
    @IBOutlet weak var detailGenre: UILabel!
    @IBOutlet weak var detailBtnWishlist: UIButton! {
        didSet {
            detailBtnWishlist.layer.cornerRadius = 20
            detailBtnWishlist.layer.borderWidth = 1
            detailBtnWishlist.layer.borderColor = UIColor.cerulean().cgColor
            detailBtnWishlist.setTitleColor(.cerulean(), for: .normal)
        }
    }
    @IBOutlet weak var detailBtnRent: UIButton! {
        didSet {
            detailBtnRent.layer.cornerRadius = 20
            detailBtnRent.layer.borderWidth = 1
            detailBtnRent.clipsToBounds = true
        }
    }

    func initDetailView(with bookDetail: Book) {
        if let url = URL(string: bookDetail.image) {
            let resource = ImageResource(downloadURL: url)
            detailImg.kf.indicatorType = .activity
            detailImg.kf.setImage(with: resource)
        } else {
            detailImg.image = UIImage.bookDefault
        }
        detailTitle.text = bookDetail.title
        detailStatus.text = bookDetail.bookStatus.translateBookStatus()
        detailAuthor.text = bookDetail.author
        detailYear.text = bookDetail.year
        detailGenre.text = bookDetail.genre
        if bookDetail.bookStatus.isBookAvailable() {
            detailStatus.textColor = .green
            detailBtnRent.layer.borderColor = UIColor.cerulean().cgColor
            detailBtnRent.setCeruleanGradient()
        } else {
            detailStatus.textColor = .red
            detailBtnRent.layer.borderColor = UIColor.grey().cgColor
            detailBtnRent.setGreyGradient()
        }
    }

}
