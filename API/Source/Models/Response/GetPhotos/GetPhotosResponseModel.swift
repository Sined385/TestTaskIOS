//
//  GetPhotosResponseModel.swift
//  API
//
//  Created by Denys Yefremov on 9/10/19.
//  Copyright © 2019 Денис Ефремов. All rights reserved.
//

import Foundation

public struct GetPhotosResponseModel : Decodable {
    
    let color : String?
    let createdAt : String?
//    let currentUserCollections : [CurrentUserCollection]?
    let descriptionField : String?
    let height : Int?
    let id : String?
    let likedByUser : Bool?
    let likes : Int?
    let links : ImageLink?
    let updatedAt : String?
    public let urls : Url?
    let user : User?
    let width : Int?
    
    enum CodingKeys: String, CodingKey {
        case color = "color"
        case createdAt = "created_at"
        case currentUserCollections = "current_user_collections"
        case descriptionField = "description"
        case height = "height"
        case id = "id"
        case likedByUser = "liked_by_user"
        case likes = "likes"
        case links = "links"
        case updatedAt = "updated_at"
        case urls = "urls"
        case user = "user"
        case width = "width"
    }
    
    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        color = try values.decodeIfPresent(String.self, forKey: .color)
        createdAt = try values.decodeIfPresent(String.self, forKey: .createdAt)
//        currentUserCollections = try values.decodeIfPresent([CurrentUserCollection].self, forKey: .currentUserCollections)
        descriptionField = try values.decodeIfPresent(String.self, forKey: .descriptionField)
        height = try values.decodeIfPresent(Int.self, forKey: .height)
        id = try values.decodeIfPresent(String.self, forKey: .id)
        likedByUser = try values.decodeIfPresent(Bool.self, forKey: .likedByUser)
        likes = try values.decodeIfPresent(Int.self, forKey: .likes)
        links = try values.decodeIfPresent(ImageLink.self, forKey: .links)
        updatedAt = try values.decodeIfPresent(String.self, forKey: .updatedAt)
        urls = try values.decodeIfPresent(Url.self, forKey: .urls)
        user = try values.decodeIfPresent(User.self, forKey: .user)
        width = try values.decodeIfPresent(Int.self, forKey: .width)
    }
    
}
