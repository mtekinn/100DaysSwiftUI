//
//  ContentView.swift
//  Instafilter
//
//  Created by Mehmet Tekin on 17.06.2024.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ContentUnavailableView {
            Label("No snippets", systemImage: "swift")
        } description: {
            Text("You don't have any saved snippets yet.")
        } actions: {
            Button("Create Snippet") {
                // create a snippet
            }
            .buttonStyle(.borderedProminent)
        }
    }
    
}

#Preview {
    ContentView()
}
