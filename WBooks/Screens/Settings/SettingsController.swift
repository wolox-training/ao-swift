//
//  SettingsController.swift
//  WBooks
//
//  Created by Andy Francisco Olarte Cardona on 1/11/19.
//  Copyright © 2019 Wolox. All rights reserved.
//

import UIKit

class SettingsController: UIViewController {
    private let _view: SettingsView = SettingsView.loadFromNib()!

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "SETTINGS_TITLE".localized()
    }
    
    override func loadView() {
        view = _view
    }
}
