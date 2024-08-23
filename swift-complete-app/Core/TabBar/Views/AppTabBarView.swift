//
//  AppTabBarView.swift
//  swift-complete-app
//
//  Created by Devor Vlad on 23/8/2024.
//

import SwiftUI

struct AppTabBarView: View {
    var body: some View {
        TabView {
            Text("A")
                .tabItem{Image(systemName: "magnifyingglass")}
                .tag(0)
            Text("B")
                .tabItem{Image(systemName: "water.waves")}
                .tag(1)
            Text("C")
                .tabItem{Image(systemName: "person")}
                .tag(2)
        }
        .tint(.primary)
    }
}

#Preview {
    AppTabBarView()
}
