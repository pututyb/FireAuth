//
//  DashboardView.swift
//  FireAuth
//
//  Created by Putut Yusri Bahtiar on 21/03/23.
//

import SwiftUI

struct DashboardView: View {
    @EnvironmentObject private var authModel: AuthViewModel
    
    
    var body: some View {
        VStack {
            Text("\(authModel.user?.email ?? "")")
            
            Button(action: {
                authModel.signOut()
            }, label: {
                Text("Sign Out")
            })
            
            Button(action: {
                if let user = authModel.user {
                    authModel.delete(user: user)
                }
            },label: {
                Text("Delete Account")
            })
        }
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
