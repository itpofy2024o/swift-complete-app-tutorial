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
            PlantDashboardView()
                .tabItem{Image(systemName: "water.waves")}
                .tag(1)
            ProfileView(userName: "WanderWong")
                .tabItem{Image(systemName: "person")}
                .tag(2)
        }
        .tint(.primary)
    }
}

#Preview {
    AppTabBarView()
}
