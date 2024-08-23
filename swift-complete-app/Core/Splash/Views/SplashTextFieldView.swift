//
//  SplashTextFieldView.swift
//  swift-complete-app
//
//  Created by Devor Vlad on 23/8/2024.
//

import SwiftUI

struct SplashTextFieldView: View {
    @Environment(\.colorScheme) var colorScheme
    let title: String
    let content: String
    var body: some View {
        VStack(alignment:.center) {
            Text("\(title)")
                .font(.largeTitle)
                .fontWeight(.semibold)
            Text("\(content)")
                .font(.headline)
                .fontWeight(.medium)
                .lineLimit(3)
                .multilineTextAlignment(.center)
                .padding(.top,5)
        }
        .padding(
            EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0)
        ).frame(height:UIScreen.main.bounds.height*0.2)
    }
}

#Preview {
    SplashTextFieldView(title: "This is Amazing!",content: "It is an extraordinary journey that we have been through, le's keep it up and start rolling! Go go Go")
}
