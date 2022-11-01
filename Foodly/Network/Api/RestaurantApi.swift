//
//  RestaurantApi.swift
//  Foodly
//
//   Created by Akniyet Turdybay on 28/10/2022.
//

import Foundation
import FirebaseFirestore
import FirebaseAuth

enum RestaurantApi {
    case getRestaurant
}

extension RestaurantApi: FirestoreRequest {
    
    var collectionReference: CollectionReference? {
        switch self {
        case .getRestaurant:
            return Firestore.firestore().collection(Collection.restaurant.identifier)
        }
    }
    
    var baseCollectionReference: DocumentReference? {
        return Firestore.firestore().collection(Collection.restaurant.identifier).document()
    }
    
    var tasks: Tasks {
        switch self {
        case .getRestaurant:
            return .read
        }
    }
    var documentReference: DocumentReference? {
        switch self {
        case .getRestaurant:
            return baseCollectionReference
        }
    }
    var collectionReferences: Query? {
        return Firestore.firestore().collection(Collection.categories.identifier).whereField("capital", isEqualTo: true)
    }
}
