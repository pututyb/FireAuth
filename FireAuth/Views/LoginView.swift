//
//  LoginView.swift
//  FireAuth
//
//  Created by Putut Yusri Bahtiar on 19/03/23.
//

import SwiftUI
import Firebase

struct LoginView: View {
    @EnvironmentObject private var authModel: AuthViewModel
    @State private var email = ""
    @State private var password = ""
    @State private var successLogin = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("background")
                    .ignoresSafeArea()
                
                VStack(alignment: .leading) {
                    Text("Email")
                        .foregroundColor(.white)
                        .padding(.leading)
                    TextField("", text: $email)
                        .padding()
                        .autocapitalization(.none)
                        .foregroundColor(.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.orange, lineWidth: 2)
                                .padding(.horizontal)
                        )
                    Text("Password")
                        .foregroundColor(.white)
                        .padding(.leading)
                    SecureField("", text: $password)
                        .padding()
                        .foregroundColor(.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.orange, lineWidth: 2)
                                .padding(.horizontal)
                        )
                    Button(action: {
                        authModel.signIn(email: email, password: password)
                    }) {
                        Text("Sign in")
                    }
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, maxHeight: 50)
                    .background(.orange)
                    .cornerRadius(8)
                    .padding()
                }
            }
        }
        .onAppear {
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}