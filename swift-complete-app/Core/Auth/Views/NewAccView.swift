//
//  NewAccView.swift
//  swift-complete-app
//
//  Created by Devor Vlad on 24/8/2024.
//

import SwiftUI
import Kingfisher

struct NewAccView: View {
    @State private var newEmail = ""
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var password = ""
    @State private var confirmation = ""
    
    var body: some View {
        VStack {
            KFImage(URL(string:"https://moralis.io/wp-content/uploads/2023/11/Phantom-Wallet.png"))
                .resizable()
                .scaledToFit()
                .frame(width:UIScreen.main.bounds.width*0.4)
                .cornerRadius(25)
                .padding(.vertical,16)
            
            VStack(spacing: 15) {
                AuthInputFieldView(text:$newEmail,label: "Gmail Address",placeholder: "example@gmail.com")
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                AuthInputFieldView(text:$firstName,label: "First Name",placeholder: "Alexander")
                AuthInputFieldView(text:$lastName,label: "Last Name",placeholder: "Bularia")
                AuthInputFieldView(text:$password,label: "Password",placeholder: "thisispassword_youknowit",isSecureInfo: true)
                AuthInputFieldView(text:$confirmation,label: "Confirm Password",placeholder: "xxxxxxxxxxxxxxxxxxxxxxxx",isSecureInfo: true)
            }
            .padding(.horizontal,28)
            .padding(.top,UIScreen.main.bounds.width*0.05)
            
            Button {
                print("hey bye")
            } label: {
                HStack {
                    Text("SIGN UP").fontWeight(.semibold)
                    Image(systemName: "arrow.up")
                }.foregroundColor(.white)
                    .frame(width: UIScreen.main.bounds.width-85,height: 44)
                    .padding(5)
            }
            .background(.brown)
            .cornerRadius(17)
            .padding(.top,20)
            
            Spacer()
        }
    }
}

#Preview {
    NewAccView()
}
