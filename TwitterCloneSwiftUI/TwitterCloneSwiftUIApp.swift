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
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
//                ContentView()
                LoginView()
            }
        }
    }
}
