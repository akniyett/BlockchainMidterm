//
//  LoginViewModel.swift
//  Foodly
//
//  Created by Akniyet Turdybay on 30/10/2022.
//
import Foundation
import FirebaseAuth

class LoginViewModel {
    func loginUser(with email: String, password: String, completion: @escaping ((Bool) -> Void)) {
        let manager = AuthManager()
        manager.validateLogin(with: email, password: password) { success in
            completion(success)
        }
    }
}
