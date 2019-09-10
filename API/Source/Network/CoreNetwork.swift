//
//  CoreNetwork.swift
//  API
//
//  Created by Denys Yefremov on 9/10/19.
//  Copyright © 2019 Денис Ефремов. All rights reserved.
//

import Foundation
import Alamofire

open class CoreNetwork {
    
    func performRequest<ResponseModel: Decodable>(parameterBuilder: ParameterBuilder, responseModel: ResponseModel.Type, completion: @escaping (Swift.Result<ResponseModel, Error>) -> Void) {
        
        guard let url = URL.init(string: parameterBuilder.path) else { return }
        request(url, method: parameterBuilder.httpMethod, parameters: parameterBuilder.parameters, encoding: URLEncoding.default, headers: parameterBuilder.headers).responseJSON { (response) in
            DispatchQueue.global(qos: .userInitiated).async {
                switch response.result {
                case .success(let data):
                    let result = DataParser.parseData(data: data, model: ResponseModel.self)
                    switch result {
                    case .success(let parsed):
                        DispatchQueue.main.async {
                            completion(.success(parsed))
                        }
                    case .failure(let error):
                        DispatchQueue.main.async {
                            completion(.failure(error))
                        }
                    }
                case .failure(let error):
                    completion(.failure(error))
                }
            }
        }
    }
    
    func download(url: String, completion: @escaping (Swift.Result<Data, Error>) -> Void) {
        
        guard let imgUrl = URL.init(string: url) else { return }
        request(imgUrl).responseData { (response) in
            
            DispatchQueue.global(qos: .userInitiated).async {
                
                switch response.result {
                case .success(let data):
                    DispatchQueue.main.async {
                        completion(.success(data))
                    }
                case .failure(let error):
                    DispatchQueue.main.async {
                        completion(.failure(error))
                    }
                }
            }
        }
    }
}
