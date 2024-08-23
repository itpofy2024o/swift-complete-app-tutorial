//
//  SplashView.swift
//  swift-complete-app
//
//  Created by Devor Vlad on 23/8/2024.
//

import SwiftUI

struct IntroView: View {
    var body: some View {
        ZStack {
            SplashBaseImageView()
            VStack {
                Spacer()
                SplashTextFieldView(
                    title:"This is Rudimentary!",
                    content:"It is a fabulous journey that we have been through, le's keep it up and start rolling!"
                ).background(.white)
            }
        }
    }
}

struct AboutView: View {
    var body: some View {
        ZStack {
            SplashBaseImageView()
            VStack {
                Spacer()
                SplashTextFieldView(
                    title:"This is Rudimentary!",
                    content:"It is a fabulous journey that we have been through, le's keep it up and start rolling!"
                ).background(.white)
            }
        }
    }
}

struct LoginSignupView: View {
    var body: some View {
        ZStack {
            SplashBaseImageView()
            VStack {
                Spacer()
                SplashTextFieldView(
                    title:"This is Rudimentary!",
                    content:"It is a fabulous journey that we have been through, le's keep it up and start rolling!"
                ).background(.white)
            }
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
    
    var body: some View {
        ZStack {
            TabView(selection: $currentPage) {
                IntroView()
                    .tag(0)
                
                AboutView()
                    .tag(1)
                
                LoginSignupView()
                    .tag(2)
            }
        }
    }
}

#Preview {
    SplashView()
}
