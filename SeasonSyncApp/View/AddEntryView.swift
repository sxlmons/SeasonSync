//
//  AddEntryView.swift
//  JournalApp
//
//  Created by Joshua Salmons on 2025-04-22.
//
// AddEntryView.swift - Form for adding new entries
import SwiftUI

struct AddEntryView: View {
    @ObservedObject var viewModel: JournalViewModel
    @Binding var isPresented: Bool
    
    @State private var title = ""
    @State private var author = ""
    @State private var entryContent = ""
    @State private var date = Date()
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Journal Entry")) {
                    TextField("Title", text: $title)
                    TextField("Author", text: $author)
                    DatePicker("Date", selection: $date, displayedComponents: .date)
                }
                
                Section(header: Text("Content")) {
                    TextEditor(text: $entryContent)
                        .frame(minHeight: 200)
                }
            }
            .navigationTitle("New Entry")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel") {
                        isPresented = false
                    }
                }
                
                ToolbarItem(placement: .confirmationAction) {
                    Button("Post") {
                        let newEntry = JournalEntry(
                            title: title,
                            date: date,
                            author: author,
                            body: entryContent
                        )
                        viewModel.addEntry(newEntry)
                        isPresented = false
                    }
                    .disabled(title.isEmpty || author.isEmpty || entryContent.isEmpty)
                }
            }
        }
    }
}
