//
//  AppDelegate.swift
//  DYWeibo
//
//  Created by Yi Deng on 26/03/2017.
//  Copyright © 2017 TD. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        UITabBar.appearance().tintColor = UIColor.orange;
        
        return true
    }
    
}

