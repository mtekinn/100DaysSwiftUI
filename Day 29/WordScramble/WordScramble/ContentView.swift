//
//  ContentView.swift
//  WordScramble
//
//  Created by Mehmet Tekin on 22.03.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var usedWords = [String]()
    @State private var rootWord = ""
    @State private var newWord = ""
    @State private var errorTitle = ""
    @State private var errorMessage = ""
    @State private var showError = false
    
    @State private var score = 0
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        NavigationStack {
            List {
                Section {
                    TextField("Enter your word", text: $newWord)
                        .textInputAutocapitalization(.never)
                }
                
                
                Section {
                    ForEach(usedWords, id: \.self) { word in
                        HStack(alignment: .lastTextBaseline) {
                            Image(systemName: "\(word.count).circle")
                            Text(word)
                        }
                    }
                }
                
                Section {
                    Text("Your Score: \(score)")
                }
            }
            .navigationTitle(rootWord)
            .onSubmit(addNewWord)
            .onAppear(perform: startGame)
            .alert(errorTitle, isPresented: $showError) {
                Button("OK") { }
            } message: {
                Text(errorMessage)
            }
            .toolbar {
                Button("New Game") {
                    startGame()
                }
            }
        }
        
        
    }
    
    func startGame() {
        if let startWordsURL = Bundle.main.url(forResource: "start", withExtension: "txt") {
            if let startWords = try? String(contentsOf: startWordsURL) {
                let allWords = startWords.components(separatedBy: "\n")
                
                rootWord = allWords.randomElement() ?? "silkworm"
                
                return
            }
        }
        fatalError("Could not load start.txt from bundle.")
    }
    
    func addNewWord() {
        // lowercase and trim the word, to make sure we don't add duplicate words with case differences
        let answer = newWord.lowercased().trimmingCharacters(in: .whitespacesAndNewlines)
        
        // exit if the remaining string is empty
        guard answer.count > 0 else {
            wordError(title: "Word cannot be empty", message: "You should enter valid word!")
            return
        }
        
        // three letters word check
        guard answer.count >= 3 else {
            wordError(title: "Word too short", message: "Word must be at least 3 letters")
            return
        }
        
        // same word check
        guard answer != rootWord else {
            wordError(title: "Same Word!", message: "You cant use same word")
            return
        }
        
        
        guard isOriginal(word: answer) else {
            wordError(title: "Word used already", message: "Be more original")
            return
        }
        
        guard isPossible(word: answer) else {
            wordError(title: "Word not possible", message: "You can't spell that word from '\(rootWord)'!")
            return
        }
        
        guard isReal(word: answer) else {
            wordError(title: "Word not recognized", message: "You can't just make them up, you know!")
            return
        }
        
        usedWords.insert(answer, at: 0)
        newWord = ""
        score += 1
    }
    
    
    func isOriginal(word: String) -> Bool {
        !usedWords.contains(word)
    }
    
    func isPossible(word: String) -> Bool {
        var tempWord = rootWord
        
        for letter in word {
            if let pos = tempWord.firstIndex(of: letter) {
                tempWord.remove(at: pos)
            } else {
                return false
            }
        }
        return true
    }
    
    func isReal(word: String) -> Bool {
        let checker = UITextChecker()
        let range = NSRange(location: 0, length: word.utf16.count)
        let misspelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
        
        return misspelledRange.location == NSNotFound
    }
    
    func wordError(title: String, message: String) {
        errorTitle = title
        errorMessage = message
        showError = true
    }
}

#Preview {
    ContentView()
}
