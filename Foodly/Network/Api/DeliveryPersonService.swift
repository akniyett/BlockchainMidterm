//
//  DeliveryPersonService.swift
//  Foodly
//
//  Created by Elvina Shamoi on 28/10/2022.
//

import Foundation

struct DeliveryPersonService {
    let router = Router<DeliveryPersonApi>()
    
    func getDeliveryPersonDetails(restaurantID: String, completion: @escaping NetworkRouterCompletion) {
        router.request(.getDeliveryPersonDetails(restaurantID: restaurantID), completion: completion)
    }
}
