//
//  TweetRowView.swift
//  TwitterCloneSwiftUI
//
//  Created by Taewoo Kim on 2022/07/17.
//

import SwiftUI

struct TweetRowView: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack(alignment: .top, spacing: 12) {
                Circle()
                    .frame(width: 56, height: 56)
                    .foregroundColor(Color.blue)
                
                // user info & tweet caption
                VStack(alignment: .leading, spacing: 4){
                    // user info
                    HStack{
                        Text("Terry")
                            .font(.subheadline).bold()
                        
                        Text("@Terryid")
                            .foregroundColor(.gray)
                            .font(.caption)
                        
                        Text("2w")
                            .foregroundColor(.gray)
                            .font(.caption)
                    }
                    
                    //tweet caption
                    Text("ContentContentContentContentContentContentContentContentContentContentContentContentContentContent")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
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

struct TweetRowView_Previews: PreviewProvider {
    static var previews: some View {
        TweetRowView()
    }
}
