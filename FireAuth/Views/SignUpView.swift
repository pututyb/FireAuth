//
//  SignUpView.swift
//  FireAuth
//
//  Created by Putut Yusri Bahtiar on 21/03/23.
//

import SwiftUI

struct SignUpView: View {
    @EnvironmentObject var authModel: AuthViewModel
    
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @State private var passwordMatch = false
    
    @State private var loginView: Bool = false
    var body: some View {
        NavigationView {
            ZStack {
                Color("background")
                    .ignoresSafeArea()
                
                VStack(alignment: .leading) {
                    Spacer()
                    
                    Group {
                        Text("CREATE\nACCOUNT")
                            .foregroundColor(.white)
                            .font(.system(size: 44, weight: .bold))
                            .padding(.all)
                        Spacer()
                    }
                    
                    Text("Email Address")
                        .foregroundColor(.white)
                        .font(.system(size: 14))
                        .padding(.leading)
                    
                    TextField(" ", text: $email)
                        .padding(.all)
                        .foregroundColor(.white)
                        .autocapitalization(.none)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.white, lineWidth: 2)
                                .padding(.horizontal)
                        )
                    
                    Text("Password")
                        .foregroundColor(.white)
                        .font(.system(size: 14))
                        .padding(.leading)
                    
                    SecureField(" ", text: $password)
                        .padding(.all)
                        .foregroundColor(.white)
                        .autocapitalization(.none)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.white, lineWidth: 2)
                                .padding(.horizontal)
                        )
                    
                    Text("Confirm Password")
                        .foregroundColor(.white)
                        .font(.system(size: 14))
                        .padding(.leading)
                    
                    SecureField(" ", text: $confirmPassword)
                        .padding(.all)
                        .foregroundColor(.white)
                        .autocapitalization(.none)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.white, lineWidth: 2)
                                .padding(.horizontal)
                        )
                    
                    Button("Sign Up") {
                        if password == confirmPassword {
                            authModel.signUp(email: email, password: password)
                        } else {
                              print("Password not match")
                        }
                    }
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, maxHeight: 50)
                    .background(.orange)
                    .cornerRadius(8)
                    .padding(.all)
                    
                    
                    Spacer()
                }
            }
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
