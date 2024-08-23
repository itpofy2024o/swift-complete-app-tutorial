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
            SplashBaseImageView(image:"infographic")
            VStack {
                Spacer()
                SplashTextFieldView(pageIndex: 0,
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
            SplashBaseImageView(image:"a")
            VStack {
                Spacer()
                SplashTextFieldView(pageIndex: 1,
                    title:"This is Fabulous!",
                    content:"It is an amazing journey that we have been through, le's keep it up and start rolling!"
                ).background(.white)
            }
        }
    }
}

struct AuthPromptView: View {
    var body: some View {
        ZStack {
            SplashBaseImageView(image:"b")
            VStack {
                Spacer()
                SplashTextFieldView(pageIndex: 2,
                    title:"This is Amazing!",
                    content:""
                ).background(.white)
            }
        }
    }
}

struct PageControl: View {
    var numberOfPages: Int
    @Binding var currentPage: Int

    var body: some View {
        HStack(spacing: 8) {
            ForEach(0..<numberOfPages, id:\.self) { index in
                Circle()
                    .fill(self.currentPage == index ? Color.black : Color.gray)
                    .frame(width: 8, height: 8)
            }
        }
        .padding(.top, UIScreen.main.bounds.height*0.1)
    }
}

struct SplashView: View {
    @State private var currentPage: Int = 0
    @GestureState private var dragOffset = CGSize.zero
    
    private let pageCount = 3

    let pages: [AnyView] = [
        AnyView(IntroView()),
        AnyView(AboutView()),
        AnyView(AuthPromptView())
    ]
    
    var body: some View {
        NavigationStack {
            GeometryReader { geometry in
                ZStack {
                    HStack(spacing: 0) {
                        ForEach(0..<pageCount, id: \.self) { index in
                            pages[index]
                        }
                    }
                    .offset(x: -CGFloat(self.currentPage) * geometry.size.width + self.dragOffset.width)
                    .animation(.easeInOut, value: self.currentPage)
                    
                    // Page control
                    PageControl(numberOfPages: pageCount, currentPage: self.$currentPage)
                        .position(x: geometry.size.width / 2, y: geometry.size.height - 30)
                }
                .gesture(
                    DragGesture()
                        .updating(self.$dragOffset) { value, state, _ in
                            state = value.translation
                        }
                        .onEnded { value in
                            let threshold: CGFloat = 50
                            if value.translation.width < -threshold {
                                // Swipe left
                                self.currentPage = min(self.currentPage + 1, pageCount - 1)
                            } else if value.translation.width > threshold {
                                // Swipe right
                                self.currentPage = max(self.currentPage - 1, 0)
                            }
                        }
                )
            }
        }
    }
}

struct PageIndicator: View {
    let numberOfPages: Int
    let currentPage: Int
    
    private let activeColor = Color.green.opacity(0.5)
    private let inactiveColor = Color.gray.opacity(0.7)
    
    var body: some View {
        HStack {
            ForEach(0..<numberOfPages, id: \.self) { index in
                Circle()
                    .fill(index == currentPage ? activeColor : inactiveColor)
                    .frame(width: 8, height: 8)
            }
        }
    }
}

#Preview {
    SplashView()
}
