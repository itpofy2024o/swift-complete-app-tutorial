//
//  ProfileView.swift
//  swift-complete-app
//
//  Created by Devor Vlad on 25/8/2024.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        List {
            UserInfoCardView(username: "Step16writing", email: "aussiebear1996@gmail.com").listRowBackground(Color.clear)
            
            Section("FootPrint") {
                Text("")
            }
            
            Section("Account") {
                Button {
                    print("")
                } label : {
                    Text("Log Out").foregroundColor(.gray)
                }
                
                Button {
                    print("")
                } label : {
                    Text("Delete Account").foregroundColor(.red)
                }
            }
        }
    }
}

#Preview {
    ProfileView()
}
