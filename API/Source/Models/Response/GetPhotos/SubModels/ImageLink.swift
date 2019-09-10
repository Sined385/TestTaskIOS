//
//  ImageLink.swift
//  API
//
//  Created by Denys Yefremov on 9/10/19.
//  Copyright © 2019 Денис Ефремов. All rights reserved.
//

import Foundation

struct ImageLink : Codable {
    
    let download : String?
    let downloadLocation : String?
    let html : String?
    let selF : String?
    
    enum CodingKeys: String, CodingKey {
        case download = "download"
        case downloadLocation = "download_location"
        case html = "html"
        case selF = "self"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        download = try values.decodeIfPresent(String.self, forKey: .download)
        downloadLocation = try values.decodeIfPresent(String.self, forKey: .downloadLocation)
        html = try values.decodeIfPresent(String.self, forKey: .html)
        selF = try values.decodeIfPresent(String.self, forKey: .selF)
    }
    
}
