//
//  ExploreViewModel.swift
//  TwitterCloneSwiftUI
//
//  Created by Taewoo Kim on 2022/08/03.
//

import Foundation

class ExploreViewModel: ObservableObject{
    @Published var users = [User]()
    let service = UserService()
    
    init() {
        fetchUsers()
    }
    
    func fetchUsers() {
        service.fetchUsers { users in
            self.users = users
        }
    }
}
