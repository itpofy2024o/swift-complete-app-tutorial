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
            SplashBaseImageView()
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

struct LoginSignupView: View {
    var body: some View {
        ZStack {
            SplashBaseImageView()
            VStack {
                Spacer()
                SplashTextFieldView(pageIndex: 2,
                    title:"This is Amazing!",
                    content:"It is a fabulous journey that we have been through, le's keep it up and start rolling!"
                ).background(.white)
            }
        }
    }
}

struct SplashView: View {
    @State private var currentIndex: Int = 0
    @State private var dragOffset: CGFloat = 0
    private let views:[AnyView] = [
        AnyView(IntroView()),
        AnyView(AboutView()),
        AnyView(LoginSignupView())
    ]
    
    var body: some View {
            VStack {
                ZStack {
                    GeometryReader { geometry in
                        HStack(spacing: 0) {
                            ForEach(0..<views.count, id: \.self) { index in
                                views[index]
                                    .frame(width: geometry.size.width)
                            }
                        }
                        .offset(
                            x: -CGFloat(currentIndex) * geometry.size.width + dragOffset
                        )
                        .animation(.easeInOut, value: currentIndex)
                        .gesture(
                            DragGesture()
                                .onChanged { value in
                                    let dragThreshold: CGFloat = 50
                                    if value.translation.width < -dragThreshold {
                                        nextPage()
                                    } else if value.translation.width > dragThreshold {
                                        previousPage()
                                    }
                                }
                        )
                    }
                }
                
                PageIndicator(numberOfPages: views.count, currentPage: currentIndex)
                    .padding(.bottom)
            }
        }
        
        private func nextPage() {
            if currentIndex < views.count - 1 {
                currentIndex += 1
            }
        }
        
        private func previousPage() {
            if currentIndex > 0 {
                currentIndex -= 1
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
