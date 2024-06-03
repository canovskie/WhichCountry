import SwiftUI

import SwiftUI

struct MenuView: View {
    @State var selectedRegion: Regions = .europe
    
    var body: some View {
        NavigationStack {
            ZStack {
                Image("worldBackground")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                    .blur(radius: 5)
                    .opacity(0.7)
                Color.black.opacity(0.4)
                    .edgesIgnoringSafeArea(.all)
                
                VStack(spacing: 20) {
                    Text("Which Flag")
                        .font(.system(size: 36, weight: .bold, design: .monospaced))
                        .foregroundColor(.white)
                        .shadow(radius: 10)
                        .padding(.top, 50)
                    
                    Picker("Select a Region", selection: $selectedRegion) {
                        ForEach(Regions.allCases) { region in
                            Text(region.rawValue).tag(region)
                        }
                    }
                    .pickerStyle(WheelPickerStyle())
                    .font(.title2)
                    .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.orange]), startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(15)
                    .shadow(radius: 10)
                    .padding(.horizontal, 60)
                    
                    Spacer()
                    Spacer()
                    
                    NavigationLink(destination: GameView(countries: selectedRegion.countries, region: selectedRegion)) {
                        Text("Play")
                            .font(.title2)
                            .bold()
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.green]), startPoint: .leading, endPoint: .trailing))
                            .foregroundColor(.white)
                            .cornerRadius(15)
                            .shadow(radius: 10)
                            .padding(.horizontal, 40)
                    }
                    Spacer()
                    HStack {
                        Text("© 2024")
                            .font(.footnote)
                            .foregroundColor(.white)
                            .opacity(0.7)
                        Spacer()
                        Text("Developer: Can Kaynar")
                            .font(.footnote)
                            .foregroundColor(.white)
                            .opacity(0.7)
                    }
                    .padding(.horizontal, 40)
                    .padding(.bottom, 20)
                }
            }
        }
    }
}

#Preview {
    MenuView()
}
