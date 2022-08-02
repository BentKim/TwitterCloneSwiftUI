//
//  SideMenuView.swift
//  TwitterCloneSwiftUI
//
//  Created by Taewoo Kim on 2022/07/23.
//

import SwiftUI

struct SideMenuView: View {
    @EnvironmentObject var authViewMdoel: AuthViewModel
    
    var body: some View {
        if let user = authViewMdoel.currentUser{
            VStack(alignment: .leading, spacing: 32) {
                VStack(alignment: .leading){
                    AsyncImage(
                        url: URL(string: user.profileImageUrl),
                        content: { image in
                            image.resizable()
                                .scaledToFill()
                                .clipShape(Circle())
                                .frame(width: 48, height: 48)
                        },
                        placeholder: {
                            ProgressView()
                        }
                    )
                    
                    VStack(alignment: .leading, spacing: 4) {
                        Text(user.fullname)
                            .font(.headline)
                        Text("@\(user.username)")
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                    
                    UserStatusView()
                        .padding(.vertical)
                }
                .padding(.leading)
                
                ForEach(SideMenuViewModel.allCases, id: \.rawValue) { viewModel in
                    if viewModel == .profile{
                        NavigationLink{
                            ProfileView(user: user)
                        } label: {
                            SideMenuOptionRowView(viewModel: viewModel)
                        }
                    } else if viewModel == .logout{
                        Button {
                            authViewMdoel.signOut()
                        } label: {
                            SideMenuOptionRowView(viewModel: viewModel)
                        }
                    } else {
                        SideMenuOptionRowView(viewModel: viewModel)
                    }
                }
                
                Spacer()
            }
        }
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
