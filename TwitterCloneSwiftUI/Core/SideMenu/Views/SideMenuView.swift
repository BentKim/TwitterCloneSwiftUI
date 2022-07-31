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
        VStack(alignment: .leading, spacing: 32) {
            VStack(alignment: .leading){
                Circle()
                    .frame(width: 48, height: 48)
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("Terry")
                        .font(.headline)
                    Text("@TerryID")
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
                        ProfileView()
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

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
