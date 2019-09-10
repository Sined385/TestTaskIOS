//
//  RequestConvertable.swift
//  API
//
//  Created by Denys Yefremov on 9/10/19.
//  Copyright © 2019 Денис Ефремов. All rights reserved.
//

import Foundation

protocol RequestConvertable {
    
    func asDictionary() -> [String : Any]
}
