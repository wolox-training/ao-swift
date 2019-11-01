//
//  StartingScreenController.swift
//  WBooks
//
//  Created by Andy Francisco Olarte Cardona on 21/10/19.
//  Copyright © 2019 Wolox. All rights reserved.
//

import UIKit
import WolmoCore

class StartingScreenController: UIViewController {
    private let _view: StartingScreenView = StartingScreenView.loadFromNib()!
    
    override func loadView() {
        view = _view
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}
