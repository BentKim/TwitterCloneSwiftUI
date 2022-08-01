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
    @Published var didAuthenticateUser = false
    private var tempUserSession: Firebase.User?

    init() {
        self.userSession = Auth.auth().currentUser
        
        print("DEBUG: User session is \(self.userSession)")
    }
    
    func login(withEmail email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if let error = error{
                return
            }
            
            guard let user = result?.user else { return }
            self.userSession = user
        }
    }
    
    func register(withEmail email: String, password: String, fullname: String, username: String) {
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error {
                print("DEBUG: Register error \(error.localizedDescription)")
                return
            }
            
            guard let user = result?.user else {return}
            self.tempUserSession = user
            
            let data = ["email": email,
                        "username": username.lowercased(),
                        "fullname": fullname,
                        "uid":user.uid]
            
            Firestore.firestore().collection("users")
                .document(user.uid)
                .setData(data) { _ in
                    self.didAuthenticateUser = true
                }
        }
    }
    
    func signOut()  {
        userSession = nil
        try? Auth.auth().signOut()
    }
    
     func uploadProfileImage(_ image: UIImage){
        guard let uid = tempUserSession?.uid else { return }
        
        ImageUploader.uploadImage(image: image) { profileImgUrl in
            Firestore.firestore().collection("users")
                .document(uid)
                .updateData(["profileImageUrl": profileImgUrl]) { _ in
                    self.userSession = self.tempUserSession
                }
        }
    }
}
