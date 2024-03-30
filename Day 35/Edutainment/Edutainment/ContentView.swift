import SwiftUI

struct Question {
    let text: String
    let answer: Int
}

struct ContentView: View {
    @State private var questions: [Question] = []
    @State private var gameActive = false
    @State private var upTo = 12
    @State private var questionCount = 5
    
    
    var body: some View {
        VStack {
            if gameActive {
                GameView(questions: $questions)
            } else {
                SettingsView(upTo: $upTo, questionCount: $questionCount, startGame: startGame)
            }
        }
    }
    
    func startGame() {
        questions = generateQuestions(upTo: upTo, count: questionCount)
        gameActive = true
    }
    
    func generateQuestions(upTo: Int, count: Int) -> [Question] {
         var questions = [Question]()
         
         for _ in 1...count {
             let number1 = Int.random(in: 2...upTo)
             let number2 = Int.random(in: 2...upTo)
             let question = Question(text: "What is \(number1) x \(number2)?", answer: number1 * number2)
             questions.append(question)
         }
         
         return questions
     }
}

struct SettingsView: View {
    // Bindings to the ContentView's state properties
    @Binding var upTo: Int
    @Binding var questionCount: Int
    var startGame: () -> Void // Closure to start the game
    
    var body: some View {
        VStack {
            
        }
        // UI elements to adjust settings and start the game
        // Use `startGame` closure to initialize the game once settings are configured
    }
}

struct GameView: View {
    @Binding var questions: [Question]
    // Additional properties and logic for managing the game's progress and user inputs
    
    var body: some View {
        VStack {
            
        }
        // Display questions and collect answers
    }
}

#Preview {
    ContentView()
}
