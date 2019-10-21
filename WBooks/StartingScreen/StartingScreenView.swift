//
//  StartingScreenView.swift
//  WBooks
//
//  Created by Andy Francisco Olarte Cardona on 21/10/19.
//  Copyright © 2019 Wolox. All rights reserved.
//

import UIKit
import WolmoCore

class StartingScreenView: UIView, NibLoadable {
    @IBOutlet weak var startingScreenLoginButton: UIButton!
    @IBAction func startingScreenLoginButton(_ sender: UIButton) {
         print("Button has been pressed")
    }
    
}
