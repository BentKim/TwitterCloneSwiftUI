//
//  AuthViewModel.swift
//  TwitterCloneSwiftUI
//
//  Created by Taewoo Kim on 2022/07/27.
//

import SwiftUI
import Firebase

class AuthViewModel: ObservableObject {
    @Published var userSession: Firebase.User?

    init() {
        self.userSession = Auth.auth().currentUser
        
        print("DEBUG: User session is \(self.userSession)")
    }
    
    func login(withEmail email: String, password: String) {
        
    }
    
    func register(withEmail email: String, password: String, fullname: String, username: String) {
        
    }
}
