//
//  ExploreViewModel.swift
//  TwitterCloneSwiftUI
//
//  Created by Taewoo Kim on 2022/08/03.
//

import Foundation

class ExploreViewModel: ObservableObject{
    @Published var users = [User]()
    @Published var searchText = ""
    
    var searchableUsers: [User] {
        if searchText.isEmpty{
            return users
        }else{
            let lowercasedQuery = searchText.lowercased()
            
            return users.filter{
                $0.username.lowercased().contains(lowercasedQuery) ||
                $0.fullname.lowercased().contains(lowercasedQuery)
            }
        }
    }
    
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
