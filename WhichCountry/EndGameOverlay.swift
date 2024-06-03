import SwiftUI

struct EndGameOverlay: View {
    var score: Int
    var restartAction: () -> Void
    
    var body: some View {
        VStack {
            Spacer()
            
            VStack {
                Text("Quiz Finished!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.bottom, 10)
                
                Text("You knew \(score)/12 flags.")
                    .font(.title2)
                    .foregroundColor(.white)
                
                Button(action: restartAction) {
                    Text("Restart")
                        .font(.title2)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.green)
                        .foregroundColor(.white)
                        .clipShape(Capsule())
                }
                .padding(.top, 20)
                
                Button(action: {
                    if let window = UIApplication.shared.windows.first {
                        window.rootViewController = UIHostingController(rootView: MenuView())
                        window.makeKeyAndVisible()
                    }
                }) {
                    Text("Back to Menu")
                        .font(.title2)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .clipShape(Capsule())
                }
                .padding(.top, 10)
            }
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.black.opacity(0.75))
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .shadow(radius: 10)
            .padding(.horizontal, 20)
            
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black.opacity(0.5))
        .edgesIgnoringSafeArea(.all)
    }
}
