//
//  UserInfoCardView.swift
//  swift-complete-app
//
//  Created by Devor Vlad on 25/8/2024.
//

import SwiftUI
import Kingfisher

struct UserInfoCardView: View {
    @Environment(\.colorScheme) var colorScheme
    let username: String
    let email: String
    var body: some View {
        HStack(spacing:10) {
            KFImage(URL(string:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXEoez5JYPK0CTVLSAO9gxyZ2Ru4Aim6bs-A&s"))
                .resizable()
                .scaledToFit()
                .frame(width:UIScreen.main.bounds.width*0.25)
                .cornerRadius(30)
                .padding(.trailing,UIScreen.main.bounds.width*0.05)
            
            if UIDevice.current.userInterfaceIdiom == .pad {
                Spacer()
            }
            
            VStack(alignment: .leading) {
                Text(username)
                    .font(.title3)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .padding(.bottom,5)
                Text(email)
                    .font(.callout)
                    .fontWeight(.regular)
                    .italic()
            }
        }
        .padding(EdgeInsets(top: 15, leading: 20, bottom: 15, trailing: 20))
        .background(colorScheme != .dark ? Color.gray.opacity(0.75) : Color.gray.opacity(0.25))
        .cornerRadius(20)
    }
}

#Preview {
    UserInfoCardView(username: "bobby1342", email: "fire@gmail.com")
}
