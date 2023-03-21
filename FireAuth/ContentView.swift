//
//  ContentView.swift
//  FireAuth
//
//  Created by Putut Yusri Bahtiar on 18/03/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var authModel: AuthViewModel
    var body: some View {
        Group {
            if authModel.user != nil {
                DashboardView()
            } else {
                LoginView()
            }
        }.onAppear {
            authModel.listenToAuthState()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
