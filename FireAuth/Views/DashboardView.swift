//
//  DashboardView.swift
//  FireAuth
//
//  Created by Putut Yusri Bahtiar on 21/03/23.
//

import SwiftUI

struct DashboardView: View {
    @EnvironmentObject private var authModel: AuthViewModel
    @ObservedObject private var viewModel = MovieListViewModel()
    
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.movie, id: \.id) { Movie in
                    VStack(alignment: .leading) {
                        Text(Movie.title ?? "")
                            .font(.system(size: 20, weight: .regular))
                    }.frame(maxHeight: 200)
                }
            }
            .onAppear(perform: self.viewModel.fetchData)
        }
        
//        VStack {
//            Text("\(authModel.user?.email ?? "")")
//
//            Button(action: {
//                authModel.signOut()
//            }, label: {
//                Text("Sign Out")
//            })
//
//            Button(action: {
//                if let user = authModel.user {
//                    authModel.delete(user: user)
//                }
//            },label: {
//                Text("Delete Account")
//            })
//        }
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
