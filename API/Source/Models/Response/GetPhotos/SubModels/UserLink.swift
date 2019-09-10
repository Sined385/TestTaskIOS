//
//  Link.swift
//  API
//
//  Created by Denys Yefremov on 9/10/19.
//  Copyright © 2019 Денис Ефремов. All rights reserved.
//

import Foundation

struct UserLink : Decodable {
    
    let html : String?
    let likes : String?
    let photos : String?
    let portfolio : String?
    let selF : String?
    
    enum CodingKeys: String, CodingKey {
        case html = "html"
        case likes = "likes"
        case photos = "photos"
        case portfolio = "portfolio"
        case selF = "self"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        html = try values.decodeIfPresent(String.self, forKey: .html)
        likes = try values.decodeIfPresent(String.self, forKey: .likes)
        photos = try values.decodeIfPresent(String.self, forKey: .photos)
        portfolio = try values.decodeIfPresent(String.self, forKey: .portfolio)
        selF = try values.decodeIfPresent(String.self, forKey: .selF)
    }
    
}
