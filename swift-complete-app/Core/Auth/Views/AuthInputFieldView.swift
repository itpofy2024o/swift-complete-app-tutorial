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
    var isSecureInfo = false
    var body: some View {
        VStack(alignment: .leading) {
            Text(label)
                .foregroundColor(Color(.darkText))
                .fontWeight(.heavy)
                .font(.footnote)
            if isSecureInfo {
                SecureField(placeholder,text:$text)
                    .font(.system(size:15))
            } else {
                TextField(placeholder,text:$text)
                    .font(.system(size: 15))
            }
            Divider()
        }
    }
}

#Preview {
    AuthInputFieldView(text: .constant(""), label: "Gentle", placeholder: "Mov")
}
