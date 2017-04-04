//
//  MainViewController.swift
//  DYWeibo
//
//  Created by Yi Deng on 05/04/2017.
//  Copyright © 2017 TD. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    fileprivate lazy var imageNames = ["tabbar_home", "tabbar_message_center", "", "tabbar_discover", "tabbar_profile"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // for loop all items
        for i in 0..<tabBar.items!.count {
            
            let item = tabBar.items![i]
            
            // compose is disable for now
            if i == 2 {
                item.isEnabled = false
                continue
            }
            
            item.selectedImage = UIImage(named: imageNames[i] + "_highlighted")
        }
    }
    

}
