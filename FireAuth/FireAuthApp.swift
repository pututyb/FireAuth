//
//  FireAuthApp.swift
//  FireAuth
//
//  Created by Putut Yusri Bahtiar on 18/03/23.
//

import SwiftUI
import Firebase

@main
struct FireAuthApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            LoginView()
        }
    }
}
