//
//  JournalView.swift
//  JournalApp
//
//  Created by Joshua Salmons on 2025-04-22.
//

// JournalView.swift - Main journal view with list and add entry form
import SwiftUI

struct JournalView: View {
    @StateObject private var viewModel = JournalViewModel()
    @State private var showingAddEntrySheet = false
    
    var body: some View {
        NavigationView {
            VStack {
                if viewModel.entries.isEmpty {
                    ContentUnavailableView("No Journal Entries", systemImage: "book.closed")
                        .padding()
                } else {
                    List {
                        ForEach(viewModel.entries) { entry in
                            JournalEntryRow(entry: entry)
                        }
                    }
                }
            }
            .navigationTitle("Journal")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        showingAddEntrySheet = true
                    }) {
                        Image(systemName: "plus")
                    }
                }
            }
            .sheet(isPresented: $showingAddEntrySheet) {
                AddEntryView(viewModel: viewModel, isPresented: $showingAddEntrySheet)
            }
        }
    }
}
