//
//  VideoData.swift
//  Youtube_Clone
//
//  Created by admin on 7/10/18.
//  Copyright © 2018 Killva. All rights reserved.
//

import Foundation

class Video : NSObject {
    
    
    var thumpnilImg : String?
    var title : String?
    var channel : Channel?
    var numberOfVides: Int?
    var uploadDate : NSDate?
    
    
      init(title : String) {
        super.init()
        self.title = title
    }
}


class Channel : NSObject {
    
    var name : String?
    var profileImg : String?
}
