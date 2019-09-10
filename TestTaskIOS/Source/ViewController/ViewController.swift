//
//  ViewController.swift
//  TestTaskIOS
//
//  Created by Denys Yefremov on 9/10/19.
//  Copyright © 2019 Денис Ефремов. All rights reserved.
//

import UIKit
import API

class ViewController: UIPageViewController, UIPageViewControllerDelegate, UIPageViewControllerDataSource {
    
    let model: Model
    
    required init?(coder: NSCoder) {
        self.model = Model.init()
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataSource = self
        delegate = self
        guard let firstVC = model.viewControllers.first else { return }
        setViewControllers([firstVC], direction: .forward, animated: true, completion: nil)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        guard let viewController = viewController as? CollectionVC else { return nil }
        if let index = model.viewControllers.firstIndex(of: viewController) {
            
            if index > 0 {
                return model.viewControllers[index - 1]
            }
        }
        
        return nil
    }

    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        guard let viewController = viewController as? CollectionVC else { return nil }
        if let index = model.viewControllers.firstIndex(of: viewController) {
            if index < model.viewControllers.count - 1 {
                return model.viewControllers[index + 1]
            }
        }
        
        return nil
    }
}


