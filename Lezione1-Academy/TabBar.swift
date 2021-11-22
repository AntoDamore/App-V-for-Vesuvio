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
           
            
            CalendarView()
                .tabItem {
                    Label("Calendar", systemImage: "calendar")
                }
            ContentView()
                .tabItem {
                    Label("Summary", systemImage: "map")
                }
        }
    }
}
