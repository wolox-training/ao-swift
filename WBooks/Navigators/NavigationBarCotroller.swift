//
//  NavigationBarCotroller.swift
//  WBooks
//
//  Created by Andy Francisco Olarte Cardona on 30/10/19.
//  Copyright © 2019 Wolox. All rights reserved.
//

import UIKit

class NavigationBarCotroller: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureNavBar()
    }
    
    private func configureNavBar() {
        navigationBar.shadowImage = UIImage()
        navigationBar.tintColor = .white
        navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        navigationBar.backgroundColor = .backgroundPolar()
        navigationBar.setBackgroundImage(UIImage.backgroundNavBar.resizableImage(withCapInsets: .zero, resizingMode: .tile), for: .default)
    }
    
}
