//
//  RentalsController.swift
//  WBooks
//
//  Created by Andy Francisco Olarte Cardona on 1/11/19.
//  Copyright © 2019 Wolox. All rights reserved.
//

import UIKit

class RentalsController: UIViewController {
    private let _view: RentalsView = RentalsView.loadFromNib()!

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "RENTALS_TITLE".localized()
    }
    
    override func loadView() {
        view = _view
    }

}
