//
//  JournalEntryRow.swift
//
//  Created by Joshua Salmons on 2025-04-22.
//

// JournalEntryRow.swift - Individual row for journal entries
import SwiftUI

struct JournalEntryRow: View {
    let entry: JournalEntry
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(entry.title)
                .font(.headline)
            
            HStack {
                Text("By: \(entry.author)")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                Spacer()
                
                Text(entry.date, style: .date)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            
            Text(entry.body)
                .font(.body)
                .lineLimit(3)
                .padding(.top, 4)
        }
        .padding(.vertical, 8)
    }
}
