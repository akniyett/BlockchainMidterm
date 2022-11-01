//
//  FirestoreRequest.swift
//  Foodly
//
//  Created by Elvina Shamoi on 26/10/2022.
//

import Foundation
import FirebaseFirestore

protocol FirestoreRequest {
    var tasks: Tasks { get }
    var documentReference: DocumentReference? { get }
    var collectionReference: CollectionReference? { get }
    var baseCollectionReference: DocumentReference? { get }
    var collectionReferences: Query? { get }
}
