//
//  SuggestController.swift
//  WBooks
//
//  Created by Andy Francisco Olarte Cardona on 1/11/19.
//  Copyright © 2019 Wolox. All rights reserved.
//

import UIKit

class SuggestController: UIViewController {
    private let _view: SuggestView = SuggestView.loadFromNib()!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "SUGGEST_TITLE".localized()
    }
    
    override func loadView() {
        view = _view
    }

}
