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
    
    static var  youtubeRed : UIColor  =  UIColor.setRgp(red: 230, green: 32, blue: 31, alpha: 1)
    static var darkYoutubeRed = UIColor.setRgp(red: 194, green: 31, blue: 31, alpha: 1)
    static var semiDarkYoutubeRed = UIColor.setRgp(red: 91, green: 14, blue: 13, alpha: 1)
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



class superCollectionVCell : UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    func setupViews() {
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
}
