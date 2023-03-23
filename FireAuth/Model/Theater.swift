//
//  Theater.swift
//  FireAuth
//
//  Created by Putut Yusri Bahtiar on 23/03/23.
//

import Foundation

struct Theater: Identifiable {
    let id: String
    let name: String
    let address: String
    let capacity: Int
    let movies: [String]
}
