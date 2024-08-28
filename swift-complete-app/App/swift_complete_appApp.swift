//
//  swift_complete_appApp.swift
//  swift-complete-app
//
//  Created by Devor Vlad on 23/8/2024.
//

import SwiftUI

@main
struct swift_complete_appApp: App {
    @StateObject var firebaseAuthModel = AuthFirebaseViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
