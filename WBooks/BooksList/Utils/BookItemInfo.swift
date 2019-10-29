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
        
        let bookItemOne = Book(bookCellTitle: "A Little Bird Told Me", bookCellAuthor: "Timothy Cross", bookCellImg: UIImage(named: "book_1"))
        array.append(bookItemOne)
        
        let bookItemTwo = Book(bookCellTitle: "When the Doves Disappeared", bookCellAuthor: "Sofi Oksanen", bookCellImg: UIImage(named: "book_2"))
        array.append(bookItemTwo)
        
        let bookItemThree = Book(bookCellTitle: "The Best Book in the World", bookCellAuthor: "Peter Sjernstrom", bookCellImg: UIImage(named: "book_3"))
        array.append(bookItemThree)
        
        let bookItemFour = Book(bookCellTitle: "Be Creative", bookCellAuthor: "Tony Alcazar", bookCellImg: UIImage(named: "book_4"))
        array.append(bookItemFour)
        
        let bookItemFive = Book(bookCellTitle: "Redesign the Web", bookCellAuthor: "Liliana Castilla", bookCellImg: UIImage(named: "book_5"))
        array.append(bookItemFive)
        
        return array
    }
    
}
