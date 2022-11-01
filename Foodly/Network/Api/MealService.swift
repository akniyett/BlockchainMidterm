//
//  MealService.swift
//  Foodly
//
//  Created by Amina Moldamyrza on 27/10/2022.
//

import Foundation

struct MealService {
    let router = Router<MealApi>()
    
    func getMeals(restaurantID: String, completion: @escaping NetworkRouterCompletion) {
        router.request(.getMeal(restaurantID: restaurantID ), completion: completion)
    }
}
