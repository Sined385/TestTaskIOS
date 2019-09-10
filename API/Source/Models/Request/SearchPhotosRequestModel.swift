//
//  SearchPhotosRequestModel.swift
//  API
//
//  Created by mac on 9/10/19.
//  Copyright © 2019 Денис Ефремов. All rights reserved.
//

import Foundation

// MARK: -
// MARK: Public Model

public struct SearchPhotoRequestModel {
    
    var query: String
    var pages: Int
    var perPage: Int
    var collections: Int
    var orientation: Orientations
    
    public init(query: String, pages: Int, perPage: Int, collections: Int, orientation: Orientations) {
        
        self.query = query
        self.pages = pages
        self.perPage = perPage
        self.collections = collections
        self.orientation = orientation
    }
}

// MARK: -
// MARK: Internal Model

struct SearchPhotosConvertable: RequestConvertable {
    
    var query: String
    var pages: Int
    var perPage: Int
    var collections: Int
    var orientation: Orientations
    
    init(model: SearchPhotoRequestModel) {
        
        self.query = model.query
        self.pages = model.pages
        self.perPage = model.perPage
        self.collections = model.collections
        self.orientation = model.orientation
    }
    
    func asDictionary() -> [String : Any] {
        return ["query" : query,
                "page" : pages,
                "per_page": perPage,
                "collections" : collections,
                "orientation" : orientation]
    }
}
