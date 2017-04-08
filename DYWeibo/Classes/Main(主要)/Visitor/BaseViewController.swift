//
//  BaseViewController.swift
//  DYWeibo
//
//  Created by Yi Deng on 09/04/2017.
//  Copyright © 2017 TD. All rights reserved.
//

import UIKit

class BaseViewController: UITableViewController {
    
    lazy var visitorView = VisitorView.visitorView()
    
    var isLogin = false
    
    override func loadView() {
        isLogin ? super.loadView() : setupVisitorView()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationItems()
    }
    
    
}

// MARK: - setup UI
extension BaseViewController {
    fileprivate func setupVisitorView() {
        view = visitorView
        
        visitorView.registerButton.addTarget(self, action: #selector(clickRegisterButton), for: .touchUpInside)
        visitorView.loginButton.addTarget(self, action: #selector(clickLoginButton), for: .touchUpInside)
    }
    
    fileprivate func setupNavigationItems() {
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "注册", style: .plain, target: self, action: #selector(clickRegisterButton))
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "登录", style: .plain, target: self, action: #selector(clickLoginButton))
    }
}

// MARK: - listening events
extension BaseViewController {
    @objc fileprivate func clickRegisterButton() {
        print("registerBtnClick")
    }
    
    @objc fileprivate func clickLoginButton() {
        print("loginBtnClick")
    }
}
