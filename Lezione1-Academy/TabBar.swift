//
//  TabBar.swift
//  Lezione1-Academy
//
//  Created by Antonio D'amore on 16/11/21.
//

import SwiftUI
struct MainView: View {

var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Label("Summary", systemImage: "map")
                }
            CalendarView()
                .tabItem {
                    Label("Order", systemImage: "square.and.pencil")
                }
        }
    }
}
