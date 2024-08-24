//
//  SplashBaseImageView.swift
//  swift-complete-app
//
//  Created by Devor Vlad on 23/8/2024.
//

import SwiftUI

func doesImageExist(named imageName: String) -> Bool {
    return UIImage(named: imageName) != nil
}

struct SplashBaseImageView: View {
    let image: String
    var body: some View {
        if image.count > 0 && doesImageExist(named: image) == true {
            Image(image).resizable().scaledToFit()
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
    SplashBaseImageView(image:"infographic")
}
