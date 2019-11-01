//
//  TabBarController.swift
//  WBooks
//
//  Created by Andy Francisco Olarte Cardona on 1/11/19.
//  Copyright © 2019 Wolox. All rights reserved.
//

import UIKit
import WolmoCore

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configureTabBar()
    }
    
    private func configureTabBar() {
        tabBar.barTintColor = .backgroundPolar()

        let tabButtonLibrary = NavigationBarCotroller(rootViewController: BookListController())
        tabButtonLibrary.tabBarItem = UITabBarItem.tabButtonLibrary
        
        let tabButtonWishlist = NavigationBarCotroller(rootViewController: WishlistController())
        tabButtonWishlist.tabBarItem = UITabBarItem.tabButtonWishlist
        
        let tabButtonSuggest = NavigationBarCotroller(rootViewController: SuggestController())
        tabButtonSuggest.tabBarItem = UITabBarItem.tabButtonSuggest
        
        let tabButtonRentals = NavigationBarCotroller(rootViewController: RentalsController())
        tabButtonRentals.tabBarItem = UITabBarItem.tabButtonRentals
        
        let tabButtonSettings = NavigationBarCotroller(rootViewController: SettingsController())
        tabButtonSettings.tabBarItem = UITabBarItem.tabButtonSettings
        
        viewControllers = [tabButtonLibrary, tabButtonWishlist, tabButtonSuggest, tabButtonRentals, tabButtonSettings]
        
    }

}
