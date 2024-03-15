//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Mehmet Tekin on 14.03.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAlert = false
    
    var body: some View {
        Button("Show Alert") {
            showingAlert = true
        }
        .alert("Important Message", isPresented: $showingAlert){
            Button("OK", role: .cancel) { }
        } message: {
            Text("Please read this.")
        }
    }
}

#Preview {
    ContentView()
}
