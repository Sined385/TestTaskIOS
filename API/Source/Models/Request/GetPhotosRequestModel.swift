//
//  GetPhotosRequestModel.swift
//  API
//
//  Created by Denys Yefremov on 9/10/19.
//  Copyright © 2019 Денис Ефремов. All rights reserved.
//

import Foundation

// MARK: -
// MARK: Public Model

public struct GetPhotosRequestModel {
    
    var page: Int
    var perPage: Int
    var orderBy: OrderType
    
    public init(page: Int, perPage: Int, orderBy: OrderType) {
        self.page = page
        self.perPage = perPage
        self.orderBy = orderBy
    }
}

// MARK: -
// MARK: Internal Model

struct GetPhotosConvertable: RequestConvertable {
    
    var page: Int
    var perPage: Int
    var orderBy: OrderType
    
    init(model: GetPhotosRequestModel) {
        self.page = model.page
        self.perPage = model.perPage
        self.orderBy = model.orderBy
    }
    
    func asDictionary() -> [String : Any] {
        return ["page" : page,
                "per_page" : perPage,
                "order_by" : orderBy]
    }
}

