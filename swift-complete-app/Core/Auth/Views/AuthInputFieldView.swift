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
        VStack(alignment: .leading,spacing: 12) {
            Text(label)
                .fontWeight(.heavy)
                .font(.title3)
            if isSecureInfo {
                SecureField(placeholder,text:$text)
                    .font(.system(size:17))
            } else {
                TextField(placeholder,text:$text)
                    .font(.system(size: 17))
            }
            Divider()
        }
    }
}

#Preview {
    AuthInputFieldView(text: .constant(""), label: "Gentle men", placeholder: "Mov")
}
