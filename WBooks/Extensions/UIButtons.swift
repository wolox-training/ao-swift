//
//  UIButtons.swift
//  WBooks
//
//  Created by Andy Francisco Olarte Cardona on 20/11/19.
//  Copyright © 2019 Wolox. All rights reserved.
//

import UIKit
import WolmoCore

extension UIButton {
    
    func setCeruleanGradient() {
        let colors = [UIColor.ceruleanFirstGradient(), UIColor.ceruleanSecondGradient()]
        gradient = ViewGradient(colors: colors, direction: .leftToRight)
    }

    func setGreyGradient() {
        let colors = [UIColor.grey(), UIColor.greySecondGradient(),UIColor.greyThirdGradient()]
        gradient = ViewGradient(colors: colors, direction: .leftToRight)
    }
}
