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
        let firstWordSubSequence: String.SubSequence? = UserFirebase.Mock_User_Firebase.email.split(separator: "@").first
        let email = firstWordSubSequence.map(String.init) ?? ""
        List {
            UserInfoCardView(username: UserFirebase.Mock_User_Firebase.fullname, email:email).listRowBackground(Color.clear)
            
            Section("FootPrint") {
                Text("")
            }
            
            Section("Preferences") {
                PreferenceRowCompView(
                    iconName: "gear", header: "settings", tint: Color(.systemGray)
                )
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
