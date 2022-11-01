//
//  Food.swift
//  Foodly
//
//  Created by Elvina Shamoi on 26/10/2022.
//
import Foundation

struct Food {
    var name = ""
    var price = ""
    var items = ""
    var image = ""
}
extension Food: RequestParameter {
    
    var asParameter: Parameter {
        return ["food": name, "price": price, "items": items, "image": image]
    }
}
