//
//  UserFirebase.swift
//  swift-complete-app
//
//  Created by Devor Vlad on 28/8/2024.
//

import Foundation


struct UserFirebase: Identifiable, Codable {
    let id: String
    let fullname: String
    let email: String
    
    var initials: String {
        let formatter = PersonNameComponentsFormatter()
        if let components = formatter.personNameComponents(from: fullname) {
            formatter.style = .abbreviated
            return formatter.string(from: components)
        }
        return ""
    }
}

extension UserFirebase {
    static var Mock_User_Firebase = UserFirebase(id:NSUUID().uuidString,fullname: "Shamnan Oana", email: "test1828699@gmail.com")
}
