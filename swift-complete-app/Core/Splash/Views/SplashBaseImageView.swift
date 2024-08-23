//
//  SplashBaseImageView.swift
//  swift-complete-app
//
//  Created by Devor Vlad on 23/8/2024.
//

import SwiftUI

struct SplashBaseImageView: View {
    @State private var isImageAvailable = false
    var body: some View {
        if isImageAvailable == true {
            Image("infographic").resizable().scaledToFit()
        } else {
            Color(
                red:150.0/255.0,
                green:252.0/255.0,
                blue:204.0/255.0
            ).opacity(0.8).ignoresSafeArea()
        }
    }
}

#Preview {
    SplashBaseImageView()
}
