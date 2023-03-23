//
//  Movie.swift
//  FireAuth
//
//  Created by Putut Yusri Bahtiar on 23/03/23.
//

import Foundation

struct Mvie: Identifiable {
    let id: String
    let title: String
    let description: String
    let posterURL: String
    let releaseDate: Date
    let theaters: [String]
}
