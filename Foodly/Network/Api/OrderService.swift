//
//  OrderService.swift
//  Foodly
//
//  Created by Amina Moldamyrza on 29/10/2022.
//

import Foundation

struct OrderService {
    let router = Router<OrderApi>()
    
    func createOrder(with food: Food, completion: @escaping NetworkRouterCompletion) {
        router.request(.createFoodOrder(items: food), completion: completion)
    }
    
    func getFoodHistory(completion: @escaping NetworkRouterCompletion) {
        router.request(.getFoodHistory, completion: completion)
    }
    func updateFoodHistory(userId: String, with food: Food, completion: @escaping NetworkRouterCompletion) {
        router.request(.updateFoodHistory(foodID: userId, items: food), completion: completion)
    }
    
}
