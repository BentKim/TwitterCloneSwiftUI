//
//  FeedView.swift
//  TwitterCloneSwiftUI
//
//  Created by Taewoo Kim on 2022/07/16.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ScrollView {
            LazyVStack{
                ForEach(0...20, id: \.self) { _ in
                    TweetRowView()
                        .padding()
                }
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
