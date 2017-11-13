//
//  book.swift
//  Stack
//
//  Created by Patrick ALi on 13/11/2017.
//  Copyright © 2017 Patrick ALi. All rights reserved.
//

import Foundation

struct Book {
    var title: String
    var author: String
    var id: String
    
}

struct BookDetails {
    var title: String
    var author: String
    var description: String
}

enum JSONError: Error{
    case InvalidURL(String)
    case InvalidKey(String)
    case InvalidArray
    case InvalidData
    case InvalidImage
    case indexOutOfRange
}

class Books{
    public static var sharedInstance = Books()
    var searchData:[Book]
    
    private init (){
        searchData = []
    }
    
    public func getBook() throws -> Book{
        return Book(title:"The Hobbit", author:"J.R.R. Tolkien", id:"abc")
    }
    
    public var count:Int{
        get{
            return 0
            //searchData.count
        }
    }
    
    public func search(withText text:String, _ completion: @escaping ()->())throws{
        completion()
        
    }
    
    public func getDetails(withID id:String, _ completion: @escaping (BookDetails)->())throws {
        completion(BookDetails(title:"The Hobbit", author:"J.R.R. Tolkien", description:"About a Hobbit"))
    }
}
