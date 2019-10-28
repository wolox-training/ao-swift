//
//  bookCell.swift
//  WBooks
//
//  Created by Andy Francisco Olarte Cardona on 28/10/19.
//  Copyright © 2019 Wolox. All rights reserved.
//

import UIKit

class BookCell: UITableViewCell {
    @IBOutlet weak var bookCellImg: UIImageView!
    @IBOutlet weak var bookCelltitle: UILabel!
    @IBOutlet weak var bookCellAuthor: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
