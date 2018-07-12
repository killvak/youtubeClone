//
//  DataModel.swift
//  Youtube_Clone
//
//  Created by admin on 7/12/18.
//  Copyright © 2018 Killva. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON


class DataModelRequests {
    
    
    private let url = "https://s3-us-west-2.amazonaws.com/youtubeassets/home.json"
    
    
    func getData(success :@escaping  ([Video])->() , failed : @escaping ()->()) {
        
        
        Alamofire.request(url).responseJSON { response in
//            debugPrint(response)
//            print(response.value)
            
            switch response.result  {
                
            case .success :
                let json = JSON(response.value)
                var data :[Video] = []
                for x in json {
                    data.append(Video(da: x.1))
                }
                DispatchQueue.main.async {
                    success(data)
                }
            case .failure(let error) :
                failed()
            }
            
            
        }
        
    }
    
}
