//
//  AuthInputFieldView.swift
//  swift-complete-app
//
//  Created by Devor Vlad on 24/8/2024.
//

import SwiftUI

struct AuthInputFieldView: View {
    @Binding var text: String
    let label: String
    let placeholder: String
    var body: some View {
        VStack(alignment: .leading) {
            
        }
    }
}

#Preview {
    AuthInputFieldView(text: .constant(""), label: "Gentle", placeholder: "Movie:")
}
