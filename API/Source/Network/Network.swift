//
//  Network.swift
//  API
//
//  Created by Denys Yefremov on 9/10/19.
//  Copyright © 2019 Денис Ефремов. All rights reserved.
//

import Foundation
import Alamofire

public class Network: CoreNetwork {
    
    public override init() {}
    
    public func getPhotos(model: GetPhotosRequestModel, completion: @escaping (Swift.Result<[GetPhotosResponseModel], Error>) -> Void) {
        
        let internalModel = GetPhotosConvertable.init(model: model)
        super.performRequest(parameterBuilder: ParameterBuilder.getPhotos(internalModel), responseModel: Array<GetPhotosResponseModel>.self) { (result) in
            
            switch result {
            case .success(let imageData):
                completion(.success(imageData))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
    public func downloadImage(url: String, completion: @escaping (Swift.Result<Data, Error>) -> Void) {
        super.download(url: url) { (result) in
            
            switch result {
            case .success(let imgData):
                completion(.success(imgData))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
    public func searchPhotos(model: SearchPhotoRequestModel) {
        
        let internalModel = SearchPhotosConvertable.init(model: model)
//        super.performRequest(parameterBuilder: .searchPhotos(internalModel), responseModel: <#T##Decodable.Protocol#>, completion: <#T##(Result<Decodable, Error>) -> Void#>)
    }
}


