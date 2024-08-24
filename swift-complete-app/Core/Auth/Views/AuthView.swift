//
//  AuthView.swift
//  swift-complete-app
//
//  Created by Devor Vlad on 24/8/2024.
//

import SwiftUI
import Kingfisher

struct AuthView: View {
    @State private var email = ""
    @State private var passwd = ""
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .center) {
                KFImage(URL(string:"https://moralis.io/wp-content/uploads/2023/11/Phantom-Wallet.png"))
                    .resizable()
                    .scaledToFit()
                    .frame(width:UIScreen.main.bounds.width*0.4)
                    .cornerRadius(25)
                    .padding(.vertical,26)
                
                VStack(spacing: 26) {
                    AuthInputFieldView(text:$email,label: "Gmail Address",placeholder: "example@gmail.com")
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    AuthInputFieldView(text:$passwd,label: "Password",placeholder: "thisispassword_youknowit",isSecureInfo: true)
                }
                .padding(.horizontal,28)
                .padding(.top,UIScreen.main.bounds.width*0.05)
                
                Button {
                    print("hey")
                } label: {
                    HStack {
                        Text("SIGN IN").fontWeight(.semibold)
                        Image(systemName: "arrow.right")
                    }.foregroundColor(.white)
                        .frame(width: UIScreen.main.bounds.width-85,height: 44)
                        .padding(5)
                }
                .background(.green)
                .cornerRadius(17)
                .padding(.top,20)
                
                Spacer()
                
                NavigationLink {
                    NewAccView()
                } label : {
                    HStack {
                        Text("haven't join us yet?").font(.system(size: 15)).fontWeight(.light)
                        Text("Well come right in!").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).font(.system(size: 17))
                    }
                }
            }
        }
    }
}

#Preview {
    AuthView()
}
