//
//  RestaurantService.swift
//  Restaurants
//
//  Created by Jonatan Londoño Taborda on 10/09/16.
//  Copyright © 2016 JaLt. All rights reserved.
//

import UIKit
import Alamofire

public typealias CompletionHandlerGET = (success:Bool, response: [[String : AnyObject]]) ->()

let headers = ["Authorization":"Basic a2lkX3JKVjNQY2IyOjcxYjYzMGUzMTU0MjRhNTBhZTkwNGFlNWQ4MDUwMTYy",
               "Content-Type":"application/x-www-from-urlencoded"]

class RestaurantService: NSObject {
    let url = "https://baas.kinvey.com/appdata/kid_rJV3Pcb2/restaurants"
    
    func getRestaurants(completion:CompletionHandlerGET){
        Alamofire.request(.GET, url, parameters: nil, headers: headers)
            .responseJSON(){response in
                
                switch response.result {
                case .Success(let JSON):
                    print("Llamado de GET \(JSON)")
                    completion(success: true, response: JSON as! [[String : AnyObject]])
                case .Failure(let error):
                    completion(success: false, response: [["error":error.localizedDescription]])
                }
        }
    }
}
