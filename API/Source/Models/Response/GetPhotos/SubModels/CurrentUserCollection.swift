//
//  CurrentUserCollection.swift
//  API
//
//  Created by Denys Yefremov on 9/10/19.
//  Copyright © 2019 Денис Ефремов. All rights reserved.
//

//import Foundation
//
//struct CurrentUserCollection : Decodable {
//
//    let coverPhoto : AnyObject?
//    let curated : Bool?
//    let id : Int?
//    let publishedAt : String?
//    let title : String?
//    let updatedAt : String?
//    let user : AnyObject?
//
//    enum CodingKeys: String, CodingKey {
//        case coverPhoto = "cover_photo"
//        case curated = "curated"
//        case id = "id"
//        case publishedAt = "published_at"
//        case title = "title"
//        case updatedAt = "updated_at"
//        case user = "user"
//    }
//
//    init(from decoder: Decoder) throws {
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        coverPhoto = try values.decodeIfPresent(AnyObject.self, forKey: .coverPhoto)
//        curated = try values.decodeIfPresent(Bool.self, forKey: .curated)
//        id = try values.decodeIfPresent(Int.self, forKey: .id)
//        publishedAt = try values.decodeIfPresent(String.self, forKey: .publishedAt)
//        title = try values.decodeIfPresent(String.self, forKey: .title)
//        updatedAt = try values.decodeIfPresent(String.self, forKey: .updatedAt)
//        user = try values.decodeIfPresent(AnyObject.self, forKey: .user)
//    }
//
//}
