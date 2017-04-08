//
//  VisitorView.swift
//  DYWeibo
//
//  Created by Yi Deng on 05/04/2017.
//  Copyright © 2017 TD. All rights reserved.
//

import UIKit

class VisitorView: UIView {
    
    @IBOutlet weak var rotationView: UIImageView!
    @IBOutlet weak var iconView: UIImageView!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    
    class func visitorView() -> VisitorView {
        return Bundle.main.loadNibNamed("VisitorView", owner: nil, options: nil)!.first as! VisitorView
    }
    
    func addRotationAnimation() {
        let rotationAnimation = CABasicAnimation(keyPath: "transform.rotation.z")
        
        rotationAnimation.fromValue = 0
        rotationAnimation.toValue = Double.pi * 2
        rotationAnimation.repeatCount = MAXFLOAT
        rotationAnimation.duration = 5
        rotationAnimation.isRemovedOnCompletion = false
        
        rotationView.layer.add(rotationAnimation, forKey: nil)
    }
    
}
