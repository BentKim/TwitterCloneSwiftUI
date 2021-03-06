//
//  ExploreView.swift
//  TwitterCloneSwiftUI
//
//  Created by Taewoo Kim on 2022/07/17.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        VStack{
            ScrollView {
                LazyVStack{
                    ForEach(0...25, id: \.self){ _ in
                        NavigationLink{
//                                ProfileView(user: <#T##User#>)
                        } label: {
                            UserRowView()
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
