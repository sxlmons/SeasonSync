//
//  JournalAppApp.swift
//  JournalApp
//
//  Created by Joshua Salmons on 2025-04-22.
//

import SwiftUI

@main
struct JournalAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
