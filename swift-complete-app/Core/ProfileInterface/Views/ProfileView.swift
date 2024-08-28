//
//  ProfileView.swift
//  swift-complete-app
//
//  Created by Devor Vlad on 25/8/2024.
//

import SwiftUI

struct ProfileView: View {
    let userName: String
    var body: some View {
        List {
            UserInfoCardView(username: "Step16writing", email: "aussiebear1996").listRowBackground(Color.clear)
            
            Section("FootPrint") {
                Text("")
            }
            
            Section("Account") {
                Button {
                    print("user - \(userName) logged out")
                } label : {
                    Text("Log Out").foregroundColor(.gray)
                }
                
                Button {
                    print("user - \(userName) deleted account")
                } label : {
                    Text("Delete Account").foregroundColor(.red)
                }
            }
        }
    }
}

#Preview {
    ProfileView(userName: "FannyWilde144")
}
