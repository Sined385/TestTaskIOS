//
//  User.swift
//  API
//
//  Created by Denys Yefremov on 9/10/19.
//  Copyright © 2019 Денис Ефремов. All rights reserved.
//

import Foundation

struct User : Decodable {
    
    let bio : String?
    let id : String?
    let instagramUsername : String?
    let links : ImageLink?
    let location : String?
    let name : String?
    let portfolioUrl : String?
//    let profileImage : ProfileImage?
    let totalCollections : Int?
    let totalLikes : Int?
    let totalPhotos : Int?
    let twitterUsername : String?
    let username : String?
    
    enum CodingKeys: String, CodingKey {
        case bio = "bio"
        case id = "id"
        case instagramUsername = "instagram_username"
        case links = "links"
        case location = "location"
        case name = "name"
        case portfolioUrl = "portfolio_url"
//        case profileImage = "profile_image"
        case totalCollections = "total_collections"
        case totalLikes = "total_likes"
        case totalPhotos = "total_photos"
        case twitterUsername = "twitter_username"
        case username = "username"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        bio = try values.decodeIfPresent(String.self, forKey: .bio)
        id = try values.decodeIfPresent(String.self, forKey: .id)
        instagramUsername = try values.decodeIfPresent(String.self, forKey: .instagramUsername)
        links = try values.decodeIfPresent(ImageLink.self, forKey: .links)
        location = try values.decodeIfPresent(String.self, forKey: .location)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        portfolioUrl = try values.decodeIfPresent(String.self, forKey: .portfolioUrl)
//        profileImage = ProfileImage(from: decoder)
        totalCollections = try values.decodeIfPresent(Int.self, forKey: .totalCollections)
        totalLikes = try values.decodeIfPresent(Int.self, forKey: .totalLikes)
        totalPhotos = try values.decodeIfPresent(Int.self, forKey: .totalPhotos)
        twitterUsername = try values.decodeIfPresent(String.self, forKey: .twitterUsername)
        username = try values.decodeIfPresent(String.self, forKey: .username)
    }
    
}
