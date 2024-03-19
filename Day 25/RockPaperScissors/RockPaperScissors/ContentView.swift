import SwiftUI

struct ContentView: View {
    let moves = ["Stone", "Paper", "Scissors"]
    @State private var computerChoiceIndex = Int.random(in: 0..<3)
    @State private var playerScore = 0
    @State private var computerScore = 0
    @State private var gameTour = 0
    @State private var showFinalScore = false
    @State private var shouldWin = Bool.random()
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .purple, .green]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                
                Text("Rock Paper Scissors")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                
                Text("Tour: \(gameTour)/10")
                    .foregroundStyle(.white)
                    .fontWeight(.medium)
                
                Text(shouldWin ? "Win this round" : "Lose this round")
                    .foregroundStyle(.white)
                    .fontWeight(.medium)
                
                Text("Computer Choose: ???")
                    .foregroundStyle(.white)
                    .italic()
                    .opacity(showFinalScore ? 1 : 0)
                
                HStack(spacing: 20) {
                    
                    ForEach(0..<moves.count, id: \.self) { index in
                        Button(action: {
                            playRound(playerChoiceIndex: index)
                        }) {
                            VStack {
                                Image(systemName: moves[index] == "Stone" ? "circle.fill" : moves[index] == "Paper" ? "doc.fill" : "scissors")
                                    .font(.largeTitle)
                                    .foregroundStyle(.white)
                                Text(moves[index])
                                    .font(.callout)
                                    .fontWeight(.bold)
                                    .foregroundStyle(.white)
                            }
                            .padding()
                            .background(Color.black.opacity(0.3))
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                        }
                    }
                }
                
                VStack(spacing: 10) {
                    Text("Player Score: \(playerScore)")
                        .foregroundStyle(.white)
                        .fontWeight(.medium)
                    Text("Computer Score: \(computerScore)")
                        .foregroundStyle(.white)
                        .fontWeight(.medium)
                }
            }
            .padding()
        }
        .alert(isPresented: $showFinalScore) {
            Alert(title: Text("Game Over"), message: Text("Final Score:\nYour Score: \(playerScore)\nComputer's Score: \(computerScore)"), dismissButton: .default(Text("OK")) {
                // Reset game
                resetGame()
            })
        }
    }
    
    func playRound(playerChoiceIndex: Int) {
        let winningMoves = ["Stone": "Scissors", "Paper": "Stone", "Scissors": "Paper"]
        let computerChoice = moves[computerChoiceIndex]
        let playerChoice = moves[playerChoiceIndex]
        let correctMove = winningMoves[computerChoice] ?? ""

        // Update scores based on whether the player should win or lose
        if (shouldWin && playerChoice == correctMove) || (!shouldWin && computerChoice == playerChoice) {
            playerScore += 1
        } else {
            playerScore -= 1
        }
        
        gameTour += 1
        if gameTour >= 10 {
            showFinalScore = true
        } else {
            computerChoiceIndex = Int.random(in: 0..<3) // Pick a new choice for the computer
            shouldWin.toggle() // Change the winning condition for the next round
        }
    }
    
    func resetGame() {
        gameTour = 0
        playerScore = 0
        computerScore = 0
        shouldWin = Bool.random()
        showFinalScore = false
        computerChoiceIndex = Int.random(in: 0..<3)
    }
}

#Preview {
    ContentView()
}
