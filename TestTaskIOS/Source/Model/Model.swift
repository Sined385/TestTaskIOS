//
//  Model.swift
//  TestTaskIOS
//
//  Created by Denys Yefremov on 9/10/19.
//  Copyright © 2019 Денис Ефремов. All rights reserved.
//

import Foundation

class Model {
    
    var viewControllers: [CollectionVC] = []
    var numberOfPages = 3
    
    init() {
        
        for _ in 0..<numberOfPages {
            let vc = CollectionVC.init(nibName: String.init(describing: CollectionVC.self), bundle: nil)
            viewControllers.append(vc)
        }
    }
}
