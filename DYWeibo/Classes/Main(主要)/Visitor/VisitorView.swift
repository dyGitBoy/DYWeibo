//
//  VisitorView.swift
//  DYWeibo
//
//  Created by Yi Deng on 05/04/2017.
//  Copyright © 2017 TD. All rights reserved.
//

import UIKit

class VisitorView: UIView {
    class func visitorView() -> VisitorView {
        return Bundle.main.loadNibNamed("VisitorView", owner: nil, options: nil)!.first as! VisitorView
    }
    
}
