//
//  ProfileImage.swift
//  API
//
//  Created by Denys Yefremov on 9/10/19.
//  Copyright © 2019 Денис Ефремов. All rights reserved.
//

import Foundation

struct ProfileImage : Decodable {
    
    let large : String?
    let medium : String?
    let small : String?
    
    enum CodingKeys: String, CodingKey {
        case large = "large"
        case medium = "medium"
        case small = "small"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        large = try values.decodeIfPresent(String.self, forKey: .large)
        medium = try values.decodeIfPresent(String.self, forKey: .medium)
        small = try values.decodeIfPresent(String.self, forKey: .small)
    }
    
}
