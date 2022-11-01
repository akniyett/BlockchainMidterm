//
//  UIView+Extensions.swift
//  FDAPersonalProject
//
//  Created by Elvina Shamoi on 30/10/2022.
//

import UIKit

extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return self.cornerRadius
        } set {
            self.layer.cornerRadius = newValue
        }
    }
    
    private var identifier: String {
        return String(describing: self)
    }
}

extension String {
    var asUrl: URL? {
        return URL(string: self)
    }
}
