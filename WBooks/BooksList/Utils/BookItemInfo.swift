//
//  BookItemInfo.swift
//  WBooks
//
//  Created by Andy Francisco Olarte Cardona on 29/10/19.
//  Copyright © 2019 Wolox. All rights reserved.
//

import UIKit

class BookItemInfo: NSObject {
    
    public static let sharedInstance = BookItemInfo()
    
    override init() {}
    
    func getBookList() -> [Book] {
        var array: [Book] = []
        
        let bookItemOne = Book(title: "A Little Bird Told Me", author: "Timothy Cross", image: UIImage(named: "book_1"))
        array.append(bookItemOne)
        
        let bookItemTwo = Book(title: "When the Doves Disappeared", author: "Sofi Oksanen", image: UIImage(named: "book_2"))
        array.append(bookItemTwo)
        
        let bookItemThree = Book(title: "The Best Book in the World", author: "Peter Sjernstrom", image: UIImage(named: "book_3"))
        array.append(bookItemThree)
        
        let bookItemFour = Book(title: "Be Creative", author: "Tony Alcazar", image: UIImage(named: "book_4"))
        array.append(bookItemFour)
        
        let bookItemFive = Book(title: "Redesign the Web", author: "Liliana Castilla", image: UIImage(named: "book_5"))
        array.append(bookItemFive)
        
        return array
    }
    
}
