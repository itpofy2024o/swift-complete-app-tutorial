//
//  PreferenceRowCompView.swift
//  swift-complete-app
//
//  Created by Devor Vlad on 28/8/2024.
//

import SwiftUI

struct PreferenceRowCompView: View {
    let iconName: String
    let header: String
    let tint: Color
    var body: some View {
        HStack(spacing:9) {
            HStack {
                Image(systemName: iconName)
                    .imageScale(.small)
                    .font(.title)
                    .foregroundColor(tint)
                
                Text(header)
                    .font(.subheadline)
            }
            
            Spacer()
            
            Text("version 1.0")
        }
    }
}

#Preview {
    PreferenceRowCompView(
        iconName: "gear", header: "Setting", tint: Color(.systemGray))
}
