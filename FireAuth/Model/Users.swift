//
//  User.swift
//  FireAuth
//
//  Created by Putut Yusri Bahtiar on 23/03/23.
//

import Foundation

struct Users: Identifiable {
    let id: String
    let email: String
    let bookings: [String]
}
