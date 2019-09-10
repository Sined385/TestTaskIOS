//
//  ParameterBuilderInterface.swift
//  API
//
//  Created by Denys Yefremov on 9/10/19.
//  Copyright © 2019 Денис Ефремов. All rights reserved.
//

import Foundation
import Alamofire

protocol ParameterBuilderInterface {
    
    var path: String { get }
    var httpMethod: HTTPMethod { get }
    var parameters: Parameters { get }
    var headers: HTTPHeaders { get }
}
