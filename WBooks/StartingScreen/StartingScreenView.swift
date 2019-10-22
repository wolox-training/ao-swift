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
    @IBOutlet weak var startingScreenButton: UIButton! {
        didSet {
            startingScreenButton.layer.cornerRadius = 20
            startingScreenButton.layer.borderWidth = 1
            startingScreenButton.layer.borderColor = UIColor.white.cgColor
        }
    }
    @IBAction func startingScreenButton(_ sender: UIButton) {
         print("Button has been pressed")
    }
    
}
