//
//  SplashView.swift
//  swift-complete-app
//
//  Created by Devor Vlad on 23/8/2024.
//

import SwiftUI

struct IntroView: View {
    var body: some View {
        VStack {
            Text("Welcome to the App")
                .font(.largeTitle)
                .padding()
            Text("This is the introduction page.")
                .font(.subheadline)
        }
    }
}

struct AboutView: View {
    var body: some View {
        VStack {
            Text("About Us")
                .font(.largeTitle)
                .padding()
            Text("Here is some information about the app.")
                .font(.subheadline)
        }
    }
}

struct LoginSignupView: View {
    var body: some View {
        VStack {
            Text("Get Started")
                .font(.largeTitle)
                .padding()
            Text("Please log in or sign up to continue.")
                .font(.subheadline)
        }
    }
}

struct SplashView: View {
    private let pages = [
        AnyView(IntroView()),
        AnyView(AboutView()),
        AnyView(LoginSignupView())
    ]
    
    @State private var currentPage = 0
    @State private var offset: CGFloat = 0
    
    var body: some View {
        Text("")
    }
}

#Preview {
    SplashView()
}
