//
//  Movie.swift
//  FireAuth
//
//  Created by Putut Yusri Bahtiar on 23/03/23.
//

import Foundation
import FirebaseFirestoreSwift

struct Movie: Identifiable, Codable {
    @DocumentID var id: String?
    var title: String?
}
