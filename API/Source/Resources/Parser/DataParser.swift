//
//  DataParser.swift
//  API
//
//  Created by Denys Yefremov on 9/10/19.
//  Copyright © 2019 Денис Ефремов. All rights reserved.
//

import Foundation

class DataParser {
    
    class func parseData<Model: Decodable>(data: Any, model: Model.Type) -> Result<Model, Error> {
        
        do {
            let json = try JSONSerialization.data(withJSONObject: data, options: [])
            let decoder = JSONDecoder.init()
            let result = try decoder.decode(model, from: json)
            return .success(result)
        } catch let error {
            print(error as NSError)
            return .failure(error)
        }
    }
}
