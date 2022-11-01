//
//  FireBaseRouter.swift
//  Foodly
//
//  Created by Elvina Shamoi on 26/10/2022.
//

import Foundation

protocol FireBaseRouter {
    associatedtype Endpoint: FirestoreRequest
    func request(_ request: Endpoint, completion: @escaping NetworkRouterCompletion)
}
