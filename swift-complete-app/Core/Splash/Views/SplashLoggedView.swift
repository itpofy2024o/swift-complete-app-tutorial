//
//  SplashLoggedView.swift
//  swift-complete-app
//
//  Created by Devor Vlad on 24/8/2024.
//

import SwiftUI
import Kingfisher

struct SplashLoggedView: View {
    @State private var navigateToViewHome = false
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        NavigationStack {
            ZStack {
                Color(colorScheme == .dark ? .white : .black.opacity(0.5)).ignoresSafeArea()
                VStack {
                    Image("back")
                    .resizable()
                    .scaledToFill()
                    .frame(
                        width: UIScreen.main.bounds.width*0.45,
                        height: UIScreen.main.bounds.height*0.25
                    )
                    .padding(
                        EdgeInsets(top: 0, leading: 0, bottom: 5, trailing: 0)
                    )
                    
                    Text("FutureGrowth")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(
                            colorScheme != .dark ?
                                .white : Color(
                                    red:170.0/255.0,
                                    green:213.0/255.0,
                                    blue:98.0/255.0
                                )
                        )
                    
                    NavigationLink(destination: AppTabBarView().navigationBarBackButtonHidden(true), isActive: $navigateToViewHome) {
                                        EmptyView()
                                    }
                }.onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        self.navigateToViewHome = true
                    }
                }
            }
        }
    }
}

#Preview {
    SplashLoggedView()
}
