//
//  RegistrationView.swift.swift
//  TwitterCloneSwiftUI
//
//  Created by Taewoo Kim on 2022/07/24.
//

import SwiftUI

struct RegistrationView: View {
    var body: some View {
        //parent container
        VStack{
            
            //header view
            VStack(alignment: .leading){
                HStack {Spacer()}
                
                Text("Hello.")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
                Text("Welcome Back")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
            }
            .frame(height: 260)
            .padding(.leading)
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            
            Spacer()
        }
        .ignoresSafeArea()
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
