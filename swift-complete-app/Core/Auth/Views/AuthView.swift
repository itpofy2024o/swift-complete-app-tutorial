//
//  AuthView.swift
//  swift-complete-app
//
//  Created by Devor Vlad on 24/8/2024.
//

import SwiftUI
import Kingfisher

struct AuthView: View {
    var body: some View {
        VStack(alignment: .center) {
            KFImage(URL(string:"https://moralis.io/wp-content/uploads/2023/11/Phantom-Wallet.png"))
                .resizable()
                .scaledToFit()
                .frame(width:UIScreen.main.bounds.width*0.4)
                .cornerRadius(25)
            
            VStack {
                Text("Account").font(.title2).fontWeight(.heavy)
            }.padding(.top,25)
        }
    }
}

#Preview {
    AuthView()
}
