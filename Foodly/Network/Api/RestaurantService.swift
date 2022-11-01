//
//  RestaurantService.swift
//  Foodly
//
//   Created by Akniyet Turdybay on 28/10/2022.
//

import Foundation

struct RestaurantService {
    let router = Router<RestaurantApi>()
    
    func getRestaurant(completion: @escaping NetworkRouterCompletion) {
        router.request(.getRestaurant, completion: completion)
    }
}
