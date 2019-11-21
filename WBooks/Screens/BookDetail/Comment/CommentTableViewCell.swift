//
//  ComentTableViewCell.swift
//  WBooks
//
//  Created by Andy Francisco Olarte Cardona on 14/11/19.
//  Copyright © 2019 Wolox. All rights reserved.
//

import Foundation
import UIKit
import WolmoCore
import Kingfisher

class CommentTableViewCell: UITableViewCell, NibLoadable { 

    @IBOutlet weak var commentCellImg: UIImageView!
    @IBOutlet weak var commentCellTitle: UILabel!
    @IBOutlet weak var commentCellSubtitle: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = .clear
    }

    func configureComment(with comment: Comment) {
        commentCellTitle.text = comment.user.username
        commentCellSubtitle.text = comment.content
    }
}
