//
//  Movie.swift
//  FireAuth
//
//  Created by Putut Yusri Bahtiar on 23/03/23.
//

import Foundation
import FirebaseFirestoreSwift
import FirebaseFirestore

struct Movie: Identifiable, Codable {
    @DocumentID var id: String?
    var title: String?
    var description: String?
    var poster_url: String?
    var release_date: Date
    var theaters: [Theater]
}
