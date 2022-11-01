//
//  restaurantCategoriesService.swift
//  Foodly
//
//   Created by Akniyet Turdybay on 28/10/2022.
//

import Foundation

struct RestaurantCatService {
    let router = Router<RestaurantCategoriesApi>()
    
    func getRestCatDetails(type: String, completion: @escaping NetworkRouterCompletion) {
        router.request(.getRestCategories(type: type), completion: completion)
    }
}
