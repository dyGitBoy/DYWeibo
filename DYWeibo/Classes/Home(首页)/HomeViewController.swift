//
//  HomeViewController.swift
//  DYWeibo
//
//  Created by Yi Deng on 05/04/2017.
//  Copyright © 2017 TD. All rights reserved.
//

import UIKit

class HomeViewController: BaseViewController {
    
    fileprivate lazy var titleButton : TitleButton = TitleButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        isLogin = true
        // 1.没有登录时设置的内容
        visitorView.addRotationAnimation()
        if !isLogin {
            return
        }
        
        // 2.设置导航栏的内容
        setupNavigationBar()
    }
}

// MARK: - setup UI
extension HomeViewController {
    fileprivate func setupNavigationBar() {
        navigationItem.leftBarButtonItem = UIBarButtonItem(imageName: "navigationbar_friendattention")
        navigationItem.rightBarButtonItem = UIBarButtonItem(imageName: "navigationbar_pop")
        
        titleButton.setTitle("Monica", for: .normal)
        titleButton.addTarget(self, action: #selector(titleBtnClick(_:)), for: .touchUpInside)
        navigationItem.titleView = titleButton
        
    }
}

// MARK: - listening events
extension HomeViewController {
    @objc fileprivate func titleBtnClick(_ titleBtn : TitleButton) {
        titleBtn.isSelected = !titleBtn.isSelected
        let popoverViewController = PopoverViewController()
        popoverViewController.modalPresentationStyle = .custom
//        present(popoverViewController, animated: true, completion: nil)
    }
}
