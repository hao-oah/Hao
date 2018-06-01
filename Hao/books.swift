//
//  books.swift
//  Hao
//
//  Created by epita on 04/04/2018.
//  Copyright © 2018 epita. All rights reserved.
//

import Foundation

class Books {
    
    var Author: String?
    var Title: String?
    var Year : String?
    var Gallery : String?
    var Details : String?
    init ( Author: String , Title: String , Year: String , Gallery: String, Details: String){
        self.Author=Author
        self.Title=Title
        self.Year=Year
        self.Gallery=Gallery
        self.Details=Details
    }
}
