//
//  Router.swift
//  API
//
//  Created by Denys Yefremov on 9/10/19.
//  Copyright © 2019 Денис Ефремов. All rights reserved.
//

import Foundation
import Alamofire

enum ParameterBuilder: ParameterBuilderInterface {
    
    case getPhotos(_ model: RequestConvertable)
    
    var path: String {
        
        switch self {
        case .getPhotos:
            return String(Endpoint.baseURL.rawValue) + "photos/"
        }
    }
    
    var httpMethod: HTTPMethod {
    return .get
    }
    
    var headers: HTTPHeaders {
        return ["Authorization" : "Client-ID " + AccessKey.main.rawValue,
                "Content-Type" : "application/x-www-form-urlencoded"]
    }
    
    var parameters: Parameters {
        
        switch self {
        case let .getPhotos(model):
            return model.asDictionary()
        }
    }
    
}
