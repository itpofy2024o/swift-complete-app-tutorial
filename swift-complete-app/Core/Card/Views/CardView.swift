//
//  CardView.swift
//  swift-complete-app
//
//  Created by Devor Vlad on 23/8/2024.
//

import SwiftUI

struct CardView: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        ZStack {
            Rectangle()
                .frame(
                    width:cardWidth,
                    height: cardHeight
                )
                .clipShape(RoundedRectangle(cornerRadius: 35))
                .foregroundColor(
                    colorScheme == .dark 
                    ? .white.opacity(0.8) : .black.opacity(0.26)
                )
        }
    }
}

private extension CardView {
    var cardWidth: CGFloat {
        UIScreen.main.bounds.width - 62
    }
    
    var cardHeight: CGFloat {
        UIScreen.main.bounds.height / 1.25
    }
}

#Preview {
    CardView()
}
