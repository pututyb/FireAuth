//
//  SignUpView.swift
//  FireAuth
//
//  Created by Putut Yusri Bahtiar on 21/03/23.
//

import SwiftUI

struct SignUpView: View {
    
    @State private var isActive: Bool? = false
    var body: some View {
        NavigationView {
            ZStack {
                Color("background")
                    .ignoresSafeArea()
                
                VStack(alignment: .leading) {
                    HStack {
                        NavigationLink(destination: LoginView(), tag: true ,selection: $isActive) {
                            Image(systemName: "arrow.backward")
                                .frame(maxWidth: .infinity, maxHeight: 20)
                                .foregroundColor(.white)
                        }
                        Spacer()
                    }
                }
            }
            .navigationBarBackButtonHidden(true)
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
