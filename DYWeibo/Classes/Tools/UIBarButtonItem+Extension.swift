//
//  UIBarButtonItem+Extension.swift
//  DYWeibo
//
//  Created by Yi Deng on 09/04/2017.
//  Copyright © 2017 TD. All rights reserved.
//

import UIKit

extension UIBarButtonItem {
    convenience init(imageName: String) {
        let button = UIButton()
        button.setImage(UIImage(named: imageName) , for: UIControlState.normal)
        button.setImage(UIImage(named: imageName + "_highlighted"), for: .highlighted)
        button.sizeToFit()
        
        self.init(customView: button)
    }
}
