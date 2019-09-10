//
//  URL.swift
//  API
//
//  Created by Denys Yefremov on 9/10/19.
//  Copyright © 2019 Денис Ефремов. All rights reserved.
//

import Foundation

public struct Url : Decodable {
    
    let full : String?
    let raw : String?
    public let regular : String?
    let small : String?
    let thumb : String?
    
    enum CodingKeys: String, CodingKey {
        case full = "full"
        case raw = "raw"
        case regular = "regular"
        case small = "small"
        case thumb = "thumb"
    }
    
    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        full = try values.decodeIfPresent(String.self, forKey: .full)
        raw = try values.decodeIfPresent(String.self, forKey: .raw)
        regular = try values.decodeIfPresent(String.self, forKey: .regular)
        small = try values.decodeIfPresent(String.self, forKey: .small)
        thumb = try values.decodeIfPresent(String.self, forKey: .thumb)
    }
}
