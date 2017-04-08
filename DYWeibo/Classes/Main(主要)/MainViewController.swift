//
//  MainViewController.swift
//  DYWeibo
//
//  Created by Yi Deng on 05/04/2017.
//  Copyright © 2017 TD. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    fileprivate lazy var composeBtn : UIButton = UIButton(imageName: "tabbar_compose_icon_add", bgImageName: "tabbar_compose_button")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupComposeBtn()
    }
    
}

// MARK:- set up UI
extension MainViewController {
    fileprivate func setupComposeBtn() {
        tabBar.addSubview(composeBtn);
        composeBtn.center = CGPoint.init(x: tabBar.center.x, y: tabBar.bounds.size.height * 0.5)
        
        composeBtn.addTarget(self, action: #selector(composeBtnClick), for: .touchUpInside)
    }
}

// MARK:- listen events
extension MainViewController {
    @objc fileprivate func composeBtnClick() {
        print("composeBtnClick")
    }
}
