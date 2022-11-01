//
//  MealsService.swift
//  Foodly
//
//  Created by Amina Moldamyrza on 27/10/2022.
//

import Foundation

struct MealsCategoriesService {
    let router = Router<MealsApi>()
    
    func getMealsCategories(completion: @escaping NetworkRouterCompletion) {
        router.request(.getMealsCategories, completion: completion)
    }
}
