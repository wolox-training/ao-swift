//
//  NavBarButtons.swift
//  WBooks
//
//  Created by Andy Francisco Olarte Cardona on 30/10/19.
//  Copyright © 2019 Wolox. All rights reserved.
//

import UIKit

extension UIBarButtonItem {
    
    public static var backButton: UIBarButtonItem {
        return UIBarButtonItem(image: UIImage.iconBack, style: UIBarButtonItem.Style.plain, target: self, action: nil)
    }
    
    public static var searchButton: UIBarButtonItem {
        return UIBarButtonItem(image: UIImage.iconSearch, style: UIBarButtonItem.Style.plain, target: self, action: nil)
    }
    
    public static var notificationsButton: UIBarButtonItem {
        return UIBarButtonItem(image: UIImage.iconNotifications, style: UIBarButtonItem.Style.plain, target: self, action: nil)
    }

}
