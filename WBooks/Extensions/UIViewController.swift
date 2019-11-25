//
//  UIViewController.swift
//  WBooks
//
//  Created by Andy Francisco Olarte Cardona on 25/11/19.
//  Copyright © 2019 Wolox. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    public func showMessage(message: String) {
        let alertController = UIAlertController(title: "", message: message, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(okButton)
        present(alertController, animated: true, completion: nil)
    }
}
