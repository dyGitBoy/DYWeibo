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
    }
}

extension BaseViewController {
    fileprivate func setupVisitorView() {
        view = visitorView
    }
}
