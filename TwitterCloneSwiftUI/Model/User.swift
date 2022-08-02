//
//  User.swift
//  TwitterCloneSwiftUI
//
//  Created by Taewoo Kim on 2022/08/02.
//

import FirebaseFirestoreSwift

struct User: Identifiable, Decodable {
    @DocumentID var id: String?
    let username: String
    let fullname: String
    let profileImageUrl: String
    let email: String
}
