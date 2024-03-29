//
//  Tweet.swift
//  TwitterCloneSwiftUI
//
//  Created by Taewoo Kim on 2022/08/14.
//

import FirebaseFirestoreSwift
import Firebase

struct Tweet: Identifiable, Decodable {
    @DocumentID var id: String?
    let caption: String
    let timestamp: Timestamp
    let uid: String
    var likes: Int
    
    var user: User?
    var didLike: Bool? = false
}
