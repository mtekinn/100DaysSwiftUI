import SwiftUI

struct FlagImage: View {
    var country: String
    var action: () -> Void
    
    @State private var rotationAngle = 0.0
    
    var body: some View {
        Image(country)
            .renderingMode(.original)
            .clipShape(Capsule())
            .shadow(radius: 5)
            .rotation3DEffect(.degrees(rotationAngle), axis: (x: 0, y: 1, z: 0))
            .onTapGesture {
                withAnimation {
                    action()
                    rotationAngle += 360
                }
            }
    }
}


struct ContentView: View {
    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State private var score = 0
    @State private var questionNumber = 0
    @State private var selectedFlag: Int?
    
    @State var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "Ukraine", "US"].shuffled()
    @State var correctAnswer = Int.random(in: 0...2)
    
    var body: some View {
        
        ZStack {
            RadialGradient(stops: [
                .init(color: Color(red: 137/255, green: 129/255, blue: 33/255), location: 0.3),
                .init(color: Color(red: 229/255, green: 194/255, blue: 155/255), location: 0.3),
            ], center: .top, startRadius: 200, endRadius: 400)
            .ignoresSafeArea()
            
            VStack {
                Text("Guess the Flag")
                    .font(.largeTitle.weight(.bold))
                    .foregroundStyle(.white)
                
                
                VStack(spacing: 10) {
                    VStack {
                        Text("Tap the flag of")
                            .foregroundStyle(.white)
                            .font(.subheadline.weight(.heavy))
                        Text(countries[correctAnswer])
                            .foregroundStyle(.secondary)
                            .font(.largeTitle.weight(.semibold))
                    }
                    ForEach(0..<3) { number in
                        Button(action: {
                            flagTapped(number)
                        }) {
                            FlagImage(country: countries[number]) {
                                flagTapped(number)
                            }
                            .opacity(selectedFlag == nil || selectedFlag == number ? 1 : 0.25)
                            .scaleEffect(selectedFlag == nil || selectedFlag == number ? 1 : 0.8)                        }
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(.ultraThinMaterial)
                .clipShape(.rect(cornerRadius: 20))
                
                Text("Score: \(score)")
                    .foregroundStyle(.white)
                    .font(.title.bold().italic())
            }
            .padding()
        }
        .alert(scoreTitle, isPresented: $showingScore) {
            Button("Continue", action: askQuestion)
        } message: {
            Text(questionNumber == 8 ? "Final score: \(score)" : "Your score is \(score)")
        }
        
    }
    
    func flagTapped(_ number: Int) {
        questionNumber += 1
        selectedFlag = number
        
        if number == correctAnswer {
            scoreTitle = "Correct"
            score += 1
        } else {
            scoreTitle = "Wrong! That’s the flag of \(countries[number])"
            score -= 1
        }
        
        if questionNumber == 8 {
            scoreTitle = "Game Over! Your final score is \(score)"
            showingScore = true
        } else {
            showingScore = true
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            askQuestion()
        }
    }
    
    func askQuestion() {
        selectedFlag = nil
        if questionNumber == 8 {
            questionNumber = 0
            score = 0
            endGame()
        } else {
            countries.shuffle()
            correctAnswer = Int.random(in: 0...2)
        }
    }
    
    func endGame() {
        selectedFlag = nil
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
        showingScore = false
    }
    
}

#Preview {
    ContentView()
}
