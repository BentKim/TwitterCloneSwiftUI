//
//  RegistrationView.swift.swift
//  TwitterCloneSwiftUI
//
//  Created by Taewoo Kim on 2022/07/24.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var username = ""
    @State private var fullname = ""
    @State private var password = ""
    @Environment (\.dismiss) var dismiss
    var body: some View {
        VStack {
            //header view
            AuthHeaderView(title1: "Get started.", title2: "Create your account")
            
            VStack(spacing: 40) {
                CustomInputField(imageName: "envelope", placeholderText: "Email", text: $email)
                
                CustomInputField(imageName: "person", placeholderText: "Username", text: $email)
                
                CustomInputField(imageName: "person", placeholderText: "Full name", text: $password)
                
                CustomInputField(imageName: "lock", placeholderText: "Password", text: $password)
            }
            .padding(32)
            
            Button{
                
            } label: {
                Text("Sign Up")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color(.systemBlue))
                    .clipShape(Capsule())
                    .padding()
            }
            .shadow(color: .gray.opacity(0.5), radius: 10, x: 0, y: 0)
            
            Spacer()
            
            Button{
                dismiss()
            } label: {
                HStack{
                    Text("Already have an account?")
                        .font(.footnote)
                    
                    Text("Sign In")
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
            }
            .padding(.bottom, 32)
        }
        .ignoresSafeArea()
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
