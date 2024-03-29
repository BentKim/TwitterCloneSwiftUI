//
//  ExploreView.swift
//  TwitterCloneSwiftUI
//
//  Created by Taewoo Kim on 2022/07/17.
//

import SwiftUI

struct ExploreView: View {
    @ObservedObject var viewModel = ExploreViewModel()
    
    var body: some View {
        VStack{
            SearchBar(text: $viewModel.searchText)
                .padding()
            
            ScrollView {
                LazyVStack{
                    ForEach(viewModel.searchableUsers){ user in
                        NavigationLink{
                                ProfileView(user: user)
                        } label: {
                            UserRowView(user: user)
                        }
                    }
                }
            }
        }
        .navigationTitle("Explore")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
