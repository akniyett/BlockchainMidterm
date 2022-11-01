//
//  ProfileService.swift
//  Foodly
//
//  Created by Akniyet Turdybay on 27/10/2022.
//

import Foundation

struct ProfileService {
    let router = Router<ProfileApi>()
    
    func getProfile(completion: @escaping NetworkRouterCompletion) {
        router.request(.getProfile, completion: completion)
    }
    func updateProfile(userId: String,
                       with profileData: ProfileModel, completion: @escaping NetworkRouterCompletion) {
        router.request(.updateProfile(userID: userId, data: profileData), completion: completion)
    }
    
}
