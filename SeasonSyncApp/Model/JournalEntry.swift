//
//  JournalEntry.swift
//
//  Created by Joshua Salmons on 2025-04-22.
//


// JournalEntry.swift - Model for journal entries
import Foundation

struct JournalEntry: Identifiable, Codable {
    var id = UUID()
    var title: String
    var date: Date
    var author: String
    var body: String
}
