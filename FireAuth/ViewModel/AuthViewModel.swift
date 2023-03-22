//
//  AuthViewModel.swift
//  FireAuth
//
//  Created by Putut Yusri Bahtiar on 21/03/23.
//

import SwiftUI
import FirebaseAuth

class AuthViewModel: ObservableObject {
    @Published var showError = false
    var user: User? {
        didSet {
            objectWillChange.send()
        }
    }
    
    func listenToAuthState() {
        Auth.auth().addStateDidChangeListener { [weak self] _, user in
            guard let self = self else {
                return
            }
            self.user = user
        }
    }
    
    func signUp(email: String, password: String) {
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error {
                print(error.localizedDescription)
                return
            }
        }
    }
    
    func signOut() {
        do {
            try Auth.auth().signOut()
        } catch let signOutError as NSError {
            print(signOutError)
        }
    }
    
    func signIn(email: String, password: String, completion: @escaping (Bool) -> Void) {
        Auth.auth().signIn(withEmail: email, password: password) { [weak self] (result, error) in
            guard let self = self else { return }
            
            if error != nil {
                print(error?.localizedDescription ?? "")
                self.showError = true
                completion(true)
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                    self.showError = false
                }
            } else {
                self.showError = false
                completion(true)
            }
        }
    }
    
    func delete(user: User) {
        let currentUser = Auth.auth().currentUser
        
        currentUser?.delete { error in
            if let error = error {
                print("error deleting user \(error.localizedDescription)")
            } else {
                print("User successfuly deleted.")
            }
        }
    }
}
