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
    @State private var successLogin: Bool = false
    @State private var isActive: Bool? = false
    @State private var animationSuccess: Bool = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("background")
                    .ignoresSafeArea()
                
                VStack(alignment: .leading) {
                    Spacer()
                    Text("Moovie")
                        .font(.system(size: 48, weight: .bold))
                        .foregroundColor(.white)
                        .padding(.leading)
                        .padding(.bottom)
                    
                    Group {
                        Text("Welcome Back,\nExplorer!")
                            .font(.system(size: 28, weight: .bold))
                            .foregroundColor(.white)
                            .padding(.leading)
                        Spacer()
                    }
                    
                    Text("Email Address")
                        .foregroundColor(.white)
                        .padding(.leading)
                    TextField("", text: $email)
                        .padding()
                        .autocapitalization(.none)
                        .foregroundColor(.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.white, lineWidth: 2)
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
                                .stroke(Color.white, lineWidth: 2)
                                .padding(.horizontal)
                        )
                    
                    Button("Sign In") {
                        withAnimation(.easeInOut) {
                            authModel.signIn(email: email, password: password)
                        }
                    }
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, maxHeight: 50)
                    .background(.orange)
                    .cornerRadius(8)
                    .padding()
                    
                    
                    NavigationLink(destination: SignUpView(), tag: true ,selection: $isActive) {
                        Text("Don't have account! Sign Up")
                            .frame(maxWidth: .infinity, maxHeight: 20)
                            .foregroundColor(.white)
                    }
                    Spacer()
                }
            }
        }.navigationBarBackButtonHidden(true)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
