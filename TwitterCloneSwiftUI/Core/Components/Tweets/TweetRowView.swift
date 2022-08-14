//
//  TweetRowView.swift
//  TwitterCloneSwiftUI
//
//  Created by Taewoo Kim on 2022/07/17.
//

import SwiftUI

struct TweetRowView: View {
    let tweet: Tweet
    var body: some View {
        VStack(alignment: .leading){
            
            //profile image + user info +tweet
            if let user = tweet.user{
                HStack(alignment: .top, spacing: 12) {
                    AsyncImage(
                        url: URL(string: user.profileImageUrl),
                        content: { image in
                            image.resizable()
                                .scaledToFill()
                                .clipShape(Circle())
                                .frame(width: 56, height: 56)
                        },
                        placeholder: {
                            ProgressView()
                        }
                    )
                    
                    // user info & tweet caption
                    VStack(alignment: .leading, spacing: 4){
                        // user info
                        HStack{
                            Text(user.fullname)
                                .font(.subheadline).bold()
                            
                            Text("@\(user.username)")
                                .foregroundColor(.gray)
                                .font(.caption)
                            
                            Text("2w")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                        
                        
                        //tweet caption
                        Text(tweet.caption)
                            .font(.subheadline)
                            .multilineTextAlignment(.leading)
                    }
                }
            }
            //action Buttons
            HStack{
                Button {
                    
                } label: {
                    Image(systemName: "bubble.left")
                        .font(.subheadline)
                }
                
                Spacer()
                
                Button {
                    
                } label: {
                    Image(systemName: "arrow.2.squarepath")
                        .font(.subheadline)
                }
                
                Spacer()
                
                Button {
                    
                } label: {
                    Image(systemName: "heart")
                        .font(.subheadline)
                }
                
                Spacer()
                
                Button {
                    
                } label: {
                    Image(systemName: "bookmark")
                        .font(.subheadline)
                }
                
            }
            .padding()
            .foregroundColor(.gray)
            
            Divider()
        }
    }
}

//struct TweetRowView_Previews: PreviewProvider {
//    static var previews: some View {
//        TweetRowView()
//    }
//}
