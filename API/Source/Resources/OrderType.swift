//
//  OrderType.swift
//  API
//
//  Created by Denys Yefremov on 9/10/19.
//  Copyright © 2019 Денис Ефремов. All rights reserved.
//

import Foundation

public enum OrderType: String {
    
    case latest = "latest"
    case oldest = "oldest"
    case popular = "popular"
}
