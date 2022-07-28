//
//  TwitterCloneSwiftUIApp.swift
//  TwitterCloneSwiftUI
//
//  Created by Taewoo Kim on 2022/07/16.
//

import SwiftUI
import Firebase

@main
struct TwitterCloneSwiftUIApp: App {
    
    @StateObject var viewModel = AuthViewModel()
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ContentView()
            }
            .environmentObject(viewModel)
        }
    }
}
