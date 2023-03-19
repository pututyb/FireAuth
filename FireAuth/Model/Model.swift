//
//  Model.swift
//  FireAuth
//
//  Created by Putut Yusri Bahtiar on 19/03/23.
//

import Foundation
import SwiftUI
import FirebaseFirestoreSwift

struct Model: Codable {
    @DocumentID var id: String?
    var title: String?
}
