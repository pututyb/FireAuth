//
//  Theater.swift
//  FireAuth
//
//  Created by Putut Yusri Bahtiar on 23/03/23.
//

import Foundation
import FirebaseFirestoreSwift
import FirebaseFirestore

struct Theater: Identifiable, Codable {
    var id: String
    var name: String
    var address: String
    var capacity: Int
    var movies: [String]
}
