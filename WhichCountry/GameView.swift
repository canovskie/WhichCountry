import SwiftUI

struct GameView: View {
    @State var countries: [String]
    var region: Regions
    @State var correctAnswer = Int.random(in: 0...2)
    @State var trueAnswerCount = 0
    @State var askedQuestion = 0
    @State private var coloredAnswerChecks = [Color](repeating: .white, count: 12)
    @State var colorIndex = 0
    @State var maxQuestion = 12
    @State var isEnd = false
    
    var backgroundColor: RadialGradient {
        switch region {
        case .europe:
            return RadialGradient(gradient: Gradient(colors: [.yellow, .blue]), center: .center, startRadius: 50, endRadius: 300)
        case .asia:
            return RadialGradient(gradient: Gradient(colors: [.yellow, .red]), center: .center, startRadius: 50, endRadius: 300)
        case .africa:
            return RadialGradient(gradient: Gradient(colors: [.blue, .orange]), center: .center, startRadius: 50, endRadius: 300)
        case .america:
            return RadialGradient(gradient: Gradient(colors: [.red, .blue]), center: .center, startRadius: 50, endRadius: 300)
        case .allRegions:
            return RadialGradient(gradient: Gradient(colors: [.green, .blue]), center: .center, startRadius: 50, endRadius: 300)
        }
    }
    
    var body: some View {
        ZStack {
            backgroundColor
            .ignoresSafeArea()
            
            VStack {
                VStack {
                    Text("Tap the Flag of")
                        .font(.title2)
                        .foregroundColor(.gray)
                        .fontWeight(.black)
                    Text("\(countries[correctAnswer])")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.black)
                    
                    ForEach(0..<3) { flag in
                        Button(action: {
                            withAnimation {
                                buttonTapped(flag)
                            }
                        }, label: {
                            Image(countries[flag])
                                .resizable()
                                .frame(width: 150, height: 100)
                                .clipShape(Capsule())
                                .overlay(
                                    Capsule()
                                        .stroke(Color.white, lineWidth: 4)
                                )
                                .shadow(color: .black, radius: 5)
                                .padding(5)
                        })
                        .rotationEffect(.degrees(isEnd && flag == correctAnswer ? 360 : 0))
                        .animation(.easeIn(duration: 1), value: isEnd)
                    }
                    .disabled(isEnd)
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(.ultraThinMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 40))
                .shadow(radius: 10)
                
                HStack {
                    ForEach(0..<12) { data in
                        Circle()
                            .foregroundColor(coloredAnswerChecks[data])
                            .frame(width: 20, height: 20)
                            .overlay(
                                Circle()
                                    .stroke(Color.white, lineWidth: 2)
                            )
                            .padding(2)
                    }
                }
                .padding()
            }
            .padding()
            
            if isEnd {
                EndGameOverlay(score: trueAnswerCount, restartAction: restartGame)
            }
        }
        .navigationBarBackButtonHidden(true)
    }
    
    func buttonTapped(_ number: Int) {
        if number == correctAnswer {
            trueAnswerCount += 1
            coloredAnswerChecks[colorIndex] = .green
        } else {
            coloredAnswerChecks[colorIndex] = .red
        }
        askedQuestion += 1
        if askedQuestion == 12 {
            isEnd = true
        } else {
            askQuestion()
        }
        colorIndex += 1
    }
    
    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
    
    func restartGame() {
        trueAnswerCount = 0
        askedQuestion = 0
        coloredAnswerChecks = [Color](repeating: .white, count: 12)
        colorIndex = 0
        askQuestion()
        isEnd = false
    }
}

#Preview {
    GameView(countries: Regions.allRegions.countries, region: .allRegions)
}
