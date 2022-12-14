//
//  Validation + Extension.swift
//  Foodly
//
//  Created by Amina Moldamyrza on 30/10/2022.
//

import Foundation

// MARK: - input validation
extension String {
    public var isValidEmail: Bool {
        NSPredicate(format: "SELF MATCHES %@", "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}").evaluate(with: self)
    }
    
    // MARK: - password validation
    public var isValidPassword: Bool {
        NSPredicate(format: "SELF MATCHES %@", "^(?=.*[A-Za-z])(?=.*\\d)[A-Za-z\\d]{8,}$").evaluate(with: self)
    }
    
    public var hasWhiteSpace: Bool {
        return self.contains(" ")
    }
}
