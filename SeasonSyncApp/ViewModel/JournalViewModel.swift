//
//  JournalViewModel.swift
//  JournalApp
//
//  Created by Joshua Salmons on 2025-04-22.
//

// JournalViewModel.swift - Manages journal entries
import Foundation
import SwiftUI

class JournalViewModel: ObservableObject {
    @Published var entries: [JournalEntry] = []
    
    // Add a new entry to the beginning of the list
    func addEntry(_ entry: JournalEntry) {
        entries.insert(entry, at: 0)
    }
}
