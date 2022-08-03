//
//  UploadTweetViewModel.swift
//  TwitterCloneSwiftUI
//
//  Created by Taewoo Kim on 2022/08/03.
//

import Foundation

class UploadTweetViewModel: ObservableObject {
    @Published var didUploadTweet = false
    let service = TweetService()
    
    func uploadTweet(withCatpion caption: String) {
        service.uploadTweet(caption: caption) { success in
            self.didUploadTweet = success
//            if success{
//
//            }else{
//
//            }
        }
    }
}
