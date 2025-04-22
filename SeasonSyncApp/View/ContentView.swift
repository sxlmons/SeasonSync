// ContentView.swift - Main tab view for navigation
import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            DashboardView()
                .tabItem {
                    Label("Dashboard", systemImage: "house")
                }
            
            JournalView()
                .tabItem {
                    Label("Journal", systemImage: "book")
                }
        }
    }
}
