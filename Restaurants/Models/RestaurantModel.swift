//
//  RestaurantModel.swift
//  Restaurants
//
//  Created by Jonatan Londoño Taborda on 9/09/16.
//  Copyright © 2016 JaLt. All rights reserved.
//

import UIKit

class RestaurantModel: NSObject {
    //MARK: Mocks
    func restaurantsMocks() -> [Restaurant] {
        let restaurants:[Restaurant] = [Restaurant(name: "Desayunos1", details: "asd asd asd asd as dadssad aa dsa asd asda sd aasdsada asdasdas asd asda asdasd asd asd asd aasd as asd sa", address: "CL 12 33 N 12 12", latitude: 6.654643, longitude: -75.564533, category: "Tipico", image: "breakfast-restaurant"),
                                        Restaurant(name: "Desayunos2", details: "fdfgd", address: "CL 12 33 N 12 12", latitude: 6.654643, longitude: -75.564533, category: "Tipico", image: "breakfast-restaurant"),
                                        Restaurant(name: "Desayunos3", details: "ddddddd", address: "CL 12 33 N 12 12", latitude: 6.654643, longitude: -75.564533, category: "Tipico", image: "breakfast-restaurant")]
        
        return restaurants
    }
}
