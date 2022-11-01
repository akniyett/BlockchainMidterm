//
//  Task.swift
//  Foodly
//
//  Created by Elvina Shamoi on 24/10/2022.
//

import Foundation

enum Tasks {
    case read
    case qread(type: String )
    case delete
    case create(documentData: Parameter)
    case update(documentData: Parameter)
}
