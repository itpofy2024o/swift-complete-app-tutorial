//
//  SplashTextFieldView.swift
//  swift-complete-app
//
//  Created by Devor Vlad on 23/8/2024.
//

import SwiftUI

struct SplashTextFieldView: View {
    @Environment(\.colorScheme) var colorScheme
    @State private var hasSeenSplash = UserDefaults.standard.bool(forKey: "hasSeenSplash")
    let pageIndex: Int
    let title: String
    let content: String
    var body: some View {
        VStack(alignment:.center, spacing: 20) {
            Text("\(title)")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.black)
            if pageIndex == 2 {
                NavigationLink(destination: AuthView()) {
                    Text("Sign In Now")
                        .font(.title)
                        .fontWeight(.semibold)
                        .padding()
                        .background(
                            Color(
                                red:219.0/255.0,
                                green:26.0/255.0,
                                blue:39.0/255.0
                            ).opacity(0.88)
                        )
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            } else {
                Text("\(content)")
                    .font(.headline)
                    .fontWeight(.medium)
                    .lineLimit(3)
                    .multilineTextAlignment(.center)
                    .padding(EdgeInsets(top: 10, leading: 40, bottom: 0, trailing: 40))
                    .foregroundColor(
                        colorScheme == .dark ? .secondary : .secondary
                    )
            }
        }
        .padding(
            EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10)
        ).frame(
            width:UIScreen.main.bounds.width,
            height:UIScreen.main.bounds.height*0.3
        ).alignmentGuide(.top) { d in d[.top] }
    }
}

#Preview {
    SplashTextFieldView(pageIndex: 2,title: "This is Amazing!",content: "It is an extraordinary journey that we have been through, le's keep it up and start rolling! Go go Go")
}
