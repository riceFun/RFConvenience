//
//  RFExtension_UIColor.swift
//  LBFM-Swift
//
//  Created by riceFun on 2019/7/30.
//  Copyright © 2019 刘博. All rights reserved.
//

import UIKit

extension UIColor {
    public convenience init(r : CGFloat, g : CGFloat, b : CGFloat) {
        self.init(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: 1.0)
    }
    
    public convenience init(r : CGFloat, g : CGFloat, b : CGFloat, a:CGFloat) {
        self.init(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: a)
    }
    
    static func rgb(r : CGFloat, g : CGFloat, b : CGFloat) -> UIColor {
        return UIColor.init(r: r, g: g, b: b)
    }
    
    static func rgba(r : CGFloat, g : CGFloat, b : CGFloat, a:CGFloat) -> UIColor {
        return UIColor.init(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: a)
    }
}
