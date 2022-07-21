//
//  UserRowView.swift
//  TwitterCloneSwiftUI
//
//  Created by Taewoo Kim on 2022/07/21.
//

import SwiftUI

struct UserRowView: View {
    var body: some View {
        HStack(spacing: 12) {
            Circle()
                .frame(width: 48, height: 48)
            
            VStack(alignment: .leading, spacing: 4){
                Text("Name")
                    .font(.subheadline).bold()
                    .foregroundColor(.black)

                
                Text("Terry")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            
            Spacer()
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}

struct UserRowView_Previews: PreviewProvider {
    static var previews: some View {
        UserRowView()
    }
}
