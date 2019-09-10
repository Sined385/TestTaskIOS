//
//  CollectionVCModel.swift
//  TestTaskIOS
//
//  Created by Denys Yefremov on 9/10/19.
//  Copyright © 2019 Денис Ефремов. All rights reserved.
//

import Foundation
import API

class CollectionVCModel {
    
    let network: Network
    
    init() {
        
        self.network = Network.init()
    }
    
    func downloadPhotos(pageNumber: Int, completion: @escaping (UIImage) -> Void) {
        
        let model = GetPhotosRequestModel.init(page: pageNumber, perPage: 30, orderBy: .popular)
        network.getPhotos(model: model) { (result) in
            
            switch result {
            case .success(let data):
                
                for photo in data {
                    guard let url = photo.urls?.regular else { return }
                    self.network.downloadImage(url: url, completion: { (result) in
                        
                        switch result {
                        case .success(let data):
                            guard let img = UIImage.init(data: data) else { return }
                            completion(img)
                        case .failure(let error):
                            print(error as NSError)
                        }
                    })
                }
            case .failure(let error):
                print(error as NSError)
            }
        }
    }
    
    
}
