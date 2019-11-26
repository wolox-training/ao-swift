//
//  UIDate.swift
//  WBooks
//
//  Created by Andy Francisco Olarte Cardona on 22/11/19.
//  Copyright © 2019 Wolox. All rights reserved.
//

import Foundation
import WolmoCore

extension Date {
    static func getDate(with date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale.current
        dateFormatter.dateFormat = "yyyy-MM-dd"
        return dateFormatter.string(from: date)
    }
}

