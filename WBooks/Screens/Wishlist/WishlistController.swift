//
//  WishlistControllerViewController.swift
//  WBooks
//
//  Created by Andy Francisco Olarte Cardona on 1/11/19.
//  Copyright © 2019 Wolox. All rights reserved.
//

import UIKit

class WishlistController: UIViewController {
    private let _view: WishlistView = WishlistView.loadFromNib()!

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "WISHLIST_TITLE".localized()
    }
    
    override func loadView() {
        view = _view
    }

}
