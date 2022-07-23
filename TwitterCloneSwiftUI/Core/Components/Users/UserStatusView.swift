//
//  UserStatusView.swift
//  TwitterCloneSwiftUI
//
//  Created by Taewoo Kim on 2022/07/23.
//

import SwiftUI

struct UserStatusView: View {
    var body: some View {
        HStack(spacing: 24){
            HStack(spacing: 4) {
                Text("807")
                    .font(.subheadline)
                    .bold()
                
                Text("Following")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
                                
            HStack(spacing: 4) {
                Text("4")
                    .font(.subheadline)
                    .bold()
                
                Text("Followers")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
        }
    }
}

struct UserStatusView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatusView()
    }
}
