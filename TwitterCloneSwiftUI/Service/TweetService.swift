//
//  TweetService.swift
//  TwitterCloneSwiftUI
//
//  Created by Taewoo Kim on 2022/08/03.
//

import Firebase
struct TweetService {
    func uploadTweet(caption: String, completion: @escaping(Bool) -> Void) {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        
        let data = ["uid": uid,
                    "caption": caption,
                    "likes": 0,
                    "timestamp": Timestamp(date: Date())] as [String:Any]
        
        Firestore.firestore().collection("tweets").document()
            .setData(data) { error in
                if let error = error{
                    print(error.localizedDescription)
                    completion(false)
                    return
                }
                completion(true)
            }
    }
}
