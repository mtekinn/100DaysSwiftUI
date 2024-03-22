//
//  ContentView.swift
//  WordScramble
//
//  Created by Mehmet Tekin on 22.03.2024.
//

import SwiftUI

struct ContentView: View {
    let people = ["Finn", "Leia", "Luke", "Rey"]
    
    var body: some View {
        VStack {
            let word = "swift"
            let checker = UITextChecker()
            let range = NSRange(location: 0, length: word.utf16.count)
            let misspelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
            
            let allGood = misspelledRange.location == NSNotFound
        }
    }
}

#Preview {
    ContentView()
}
