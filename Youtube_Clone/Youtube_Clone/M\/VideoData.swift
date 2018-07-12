//
//  VideoData.swift
//  Youtube_Clone
//
//  Created by admin on 7/10/18.
//  Copyright © 2018 Killva. All rights reserved.
//

import Foundation
import SwiftyJSON

class Video : NSObject {
    
    
    var thumpnilImg : String?
    var title : String?
    var channel : Channel?
    var numberOfVides: Int?
    var uploadDate : NSDate?
    

    init(da : JSON) {
    
        self.thumpnilImg = da["thumbnail_image_name"].stringValue
        self.title = da["title"].stringValue
        self.numberOfVides = da["number_of_views"].intValue
        
        channel = Channel(da: da["channel"])
    }
    
      init(title : String) {
        super.init()
        self.title = title
    }
    
    
}


class Channel : NSObject {
    
    var name : String?
    var profileImg : String?
    
    
    
    init(da : JSON) {
        
        self.name = da["name"].stringValue
        self.profileImg = da["profile_image_name"].stringValue
 
    }
}
