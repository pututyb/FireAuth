//
//  Booking.swift
//  FireAuth
//
//  Created by Putut Yusri Bahtiar on 23/03/23.
//

import Foundation

struct Booking: Identifiable {
    let id: String
    let movieID: String
    let theaterID: String
    let userID: String
    let dateTime: Date
}
