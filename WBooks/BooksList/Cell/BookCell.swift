//
//  bookCell.swift
//  WBooks
//
//  Created by Andy Francisco Olarte Cardona on 28/10/19.
//  Copyright © 2019 Wolox. All rights reserved.
//

import UIKit
import WolmoCore

class BookCell: UITableViewCell, NibLoadable {
    @IBOutlet weak var bookCellImg: UIImageView!
    @IBOutlet weak var bookCellTitle: UILabel!
    @IBOutlet weak var bookCellAuthor: UILabel!
    @IBOutlet weak var cellBackground: UIView! {
        didSet {
            cellBackground.layer.cornerRadius = 5
            cellBackground.backgroundColor = .white
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = .clear
    }
    
    func configureCell(with book: Book) {
        self.bookCellTitle.text = book.bookCellTitle
        self.bookCellAuthor.text = book.bookCellAuthor
        self.bookCellImg.image = book.bookCellImg
    }

}
