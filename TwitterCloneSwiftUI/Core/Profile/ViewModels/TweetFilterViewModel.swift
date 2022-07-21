//
//  TweetFilterViewModel.swift
//  TwitterCloneSwiftUI
//
//  Created by Taewoo Kim on 2022/07/21.
//

import Foundation

enum TweetFilterViewModel: Int, CaseIterable{
    case tweets
    case replies
    case likes
    
    var title: String {
        switch self{
        case .tweets: return "Tweets"
        case .replies: return "Replies"
        case .likes: return "Likes"
        }
    }
}
