//
//  RestaurantModel.swift
//  Restaurants
//
//  Created by Jonatan Londoño Taborda on 9/09/16.
//  Copyright © 2016 JaLt. All rights reserved.
//

import UIKit

class RestaurantModel: NSObject {
    var restaurants = [Restaurant]()
    typealias CompletionHandler = (success:Bool, response: [Restaurant]) ->()
    
    //MARK: Mocks
    func restaurantsMocks() -> [Restaurant] {
        let restaurants:[Restaurant] = [Restaurant(name: "Desayunos1", details: "asd asd asd asd as dadssad aa dsa asd asda sd aasdsada asdasdas asd asda asdasd asd asd asd aasd as asd sa", address: "CL 12 33 N 12 12", latitude: 6.654643, longitude: -75.564533, category: "Tipico", image: "breakfast-restaurant"),
                                        Restaurant(name: "Desayunos2", details: "fdfgd", address: "CL 12 33 N 12 12", latitude: 6.654643, longitude: -75.564533, category: "Tipico", image: "breakfast-restaurant"),
                                        Restaurant(name: "Desayunos3", details: "ddddddd", address: "CL 12 33 N 12 12", latitude: 6.654643, longitude: -75.564533, category: "Tipico", image: "breakfast-restaurant")]
        
        return restaurants
    }
    
    //MARK: Services
    func getRestaurantsFromServer(completion: CompletionHandler){
        let request = RestaurantService()
        request.getRestaurants { (success, response) in
            if success {
                self.restaurants.removeAll()
                
                for item in response {
                    let restaurantTmp = Restaurant(name: item["name"] as! String, details: item["details"] as! String, address: item["address"] as! String, telephone: item["telephone"] as! String, latitude: item["latitude"] as! Double, longitude: item["longitude"] as! Double, category: item["category"] as! String, wifi: item["wifi"] as! Bool, available: item["available"] as! Bool, ranking: item["ranking"] as! Float, image: item["image"] as! String)
                    
                    self.restaurants.append(restaurantTmp)
                }
                
                completion(success: true, response: self.restaurants)
            } else {
                completion(success: false, response: self.restaurants)
            }
        }
    }
}
