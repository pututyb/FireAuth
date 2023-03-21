//
//  SignUpView.swift
//  FireAuth
//
//  Created by Putut Yusri Bahtiar on 21/03/23.
//

import SwiftUI

struct SignUpView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("background")
                    .ignoresSafeArea()
                
                VStack(alignment: .leading) {
                    HStack {
                        Button(action: {
                            NavigationLink("Back", destination: LoginView())
                        },label: {
                            Image(systemName: "arrow.backward")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(.white)
                                .padding(.leading)
                        })
                        Spacer()
                    }
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
