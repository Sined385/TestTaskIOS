//
//  ViewController.swift
//  TestTaskIOS
//
//  Created by Denys Yefremov on 9/10/19.
//  Copyright © 2019 Денис Ефремов. All rights reserved.
//

import UIKit
import API

class ViewController: UIViewController {
    
    @IBOutlet weak var pageControl: UIPageControl!
    
    let model: Model
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        self.model = Model.init()
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        self.model = Model.init()
        super.init(coder: aDecoder)
    }
    
}

//let network = Network.init()
//
//let model = GetPhotosRequestModel.init(page: 1, perPage: 30, orderBy: .latest)
//network.getPhotos(model: model) { (result) in
//
//    switch result {
//    case .success(let data):
//        guard let url = data.first?.urls?.regular else { return }
//        network.downloadImage(url: url, completion: { (result) in
//            switch result {
//            case .success(let data):
//                guard let img = UIImage.init(data: data, scale: 1) else { return }
//                self.imageView.image = img
//            case .failure(let error):
//                print(error)
//            }
//        })
//    case .failure(let error):
//        print(error)
//}
