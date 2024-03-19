import SwiftUI

struct ContentView: View {
    let moves = ["Stone", "Paper", "Scissors"]
    @State private var computerChoiceIndex = Int.random(in: 0..<3)
    @State private var playerScore = 0
    @State private var computerScore = 0
    @State private var gameTour = 0
    @State private var showFinalScore = false
    @State private var showComputerChoose = false
    
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
                
                Text(showComputerChoose ? "Computer Choose: \(moves[computerChoiceIndex])" : "Computer choosing...")
                    .foregroundStyle(.white)
                    .italic()
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
        .alert("Over Tour.", isPresented: $showComputerChoose) {
            Button("OK", role: .cancel) { }
        } message: {
            Text("Computer picked \(moves[computerChoiceIndex]).\nYour Score: \(playerScore)\nComputer's Score: \(computerScore)")
        }
        

    }
    
    func playRound(playerChoiceIndex: Int) {
        let winningMoves = ["Stone": "Scissors", "Paper": "Stone", "Scissors": "Paper"]
        let computerChoice = moves[computerChoiceIndex]
        let playerChoice = moves[playerChoiceIndex]
        
        if winningMoves[playerChoice] == computerChoice {
            playerScore += 1
        } else if winningMoves[computerChoice] == playerChoice {
            computerScore += 1
        }
        
        gameTour += 1
        showComputerChoose = true
        
        if gameTour >= 10 {
            showFinalScore = true
        } else {
            computerChoiceIndex = Int.random(in: 0..<3)
        }
    }
}

#Preview {
    ContentView()
}
