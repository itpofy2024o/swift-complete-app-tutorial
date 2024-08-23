//
//  SplashTextFieldView.swift
//  swift-complete-app
//
//  Created by Devor Vlad on 23/8/2024.
//

import SwiftUI

struct SplashTextFieldView: View {
    @Environment(\.colorScheme) var colorScheme
    let pageIndex: Int
    let title: String
    let content: String
    var body: some View {
        VStack(alignment:.center) {
            Text("\(title)")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.black)
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
        .padding(
            EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10)
        ).frame(
            width:UIScreen.main.bounds.width,
            height:UIScreen.main.bounds.height*0.2
                )
    }
}

#Preview {
    SplashTextFieldView(pageIndex: 0,title: "This is Amazing!",content: "It is an extraordinary journey that we have been through, le's keep it up and start rolling! Go go Go")
}
