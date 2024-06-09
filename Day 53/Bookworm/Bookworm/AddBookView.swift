//
//  AddBookView.swift
//  Bookworm
//
//  Created by Mehmet Tekin on 29.05.2024.
//

import SwiftUI

struct AddBookView: View {
    @Environment(\.modelContext) var modelContext
    @Environment(\.dismiss) var dismiss
    
    @State private var title = ""
    @State private var author = ""
    @State private var rating = 3
    @State private var genre = "Fantasy"
    @State private var review = ""
    @State private var showingAlert = false
    
    let genres = ["Fantasy", "Horror", "Kids", "Mystery", "Poetry", "Romance", "Thriller"]
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("Name of book", text: $title)
                    TextField("Author's name", text: $author)
                    
                    Picker("Genre", selection: $genre) {
                        ForEach(genres, id: \.self) {
                            Text($0)
                        }
                    }
                }
                
                Section("Write a review") {
                    TextEditor(text: $review)
                    RatingView(rating: $rating)
                }
                
                Section {
                    Button("Save") {
                        if title.isEmpty || author.isEmpty || genre.isEmpty {
                            showingAlert = true
                        } else {
                            let newBook = Book(title: title, author: author, genre: genre, review: review, rating: rating)
                            modelContext.insert(newBook)
                            dismiss()
                            
                        }
                    }
                }
            }
            .navigationTitle("Add Book")
            .alert("Validation error", isPresented: $showingAlert) {
                Button("OK", role: .cancel) { }
            } message: {
                Text("Please fill in all fields.")
            }
        }
    }
}

#Preview {
    AddBookView()
}
