//
//  AuthManager.swift
//  Foodly
//
//  Created by Akniyet Turdybay on 24/10/2022.
//

import Foundation
import FirebaseAuth

class AuthManager {
    
    func validateLogin(with email: String, password: String, completion: @escaping ((Bool) -> Void)) {
        Auth.auth().signIn(withEmail: email, password: password) {_, error in
            guard error == nil else {
                completion(false)
                return
            }
            completion(true)
        }
    }
    
}
