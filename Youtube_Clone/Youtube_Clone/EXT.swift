//
//  EXT.swift
//  Youtube_Clone
//
//  Created by admin on 7/9/18.
//  Copyright © 2018 Killva. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    
    
   static func setRgp(red: CGFloat,green:CGFloat,blue:CGFloat,alpha : CGFloat) -> UIColor {
        return UIColor(red: red / 255, green: green / 255, blue: blue / 255, alpha: alpha)
    }
}

extension UIViewController {
    
    func setupNavigationLabel(title : String, color : UIColor, fontSize : CGFloat)  {
        let lbl =  UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width - 12, height: view.frame.height))
        lbl.text = title
        lbl.textColor = color
        lbl.font = UIFont.systemFont(ofSize: fontSize)
        navigationItem.titleView = lbl
        
    }
}
