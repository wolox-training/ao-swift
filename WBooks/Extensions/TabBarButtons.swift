//
//  TabBarButtons.swift
//  WBooks
//
//  Created by Andy Francisco Olarte Cardona on 1/11/19.
//  Copyright © 2019 Wolox. All rights reserved.
//

import UIKit

extension UITabBarItem {
    
    public static var tabButtonLibrary: UITabBarItem {
        let tabButtonLibrary = UITabBarItem(title: "LIBRARY".localized(), image: UIImage.iconLibraryInactive, selectedImage: UIImage.iconLibraryActive)
        tabButtonLibrary.tag = 0
        return tabButtonLibrary
    }
    
    public static var tabButtonWishlist: UITabBarItem {
        let tabButtonWishlist = UITabBarItem(title: "WISHLIST".localized(), image: UIImage.iconStarInactive, selectedImage: UIImage.iconStarActive)
        tabButtonWishlist.tag = 1
        return tabButtonWishlist
    }
    
    public static var tabButtonSuggest: UITabBarItem {
        let tabButtonSuggest = UITabBarItem(title: "SUGGEST".localized(), image: UIImage.iconAddNewInactive, selectedImage: UIImage.iconAddNewActive)
        tabButtonSuggest.tag = 2
        return tabButtonSuggest
    }
    
    public static var tabButtonRentals: UITabBarItem {
        let tabButtonRentals = UITabBarItem(title: "RENTALS".localized(), image: UIImage.iconRentalsInactive, selectedImage: UIImage.iconRentalsActive)
        tabButtonRentals.tag = 3
        return tabButtonRentals
    }
    
    public static var tabButtonSettings: UITabBarItem {
        let tabButtonSettings = UITabBarItem(title: "SETTINGS".localized(), image: UIImage.iconSettingsInactive, selectedImage: UIImage.iconSettingsActive)
        tabButtonSettings.tag = 4
        return tabButtonSettings
    }
    
}
