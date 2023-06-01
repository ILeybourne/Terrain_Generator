
import Foundation
import SwiftUI

public struct ContentView: View {
    @State var money = 10
    @State var gameOver = false
    @State var won = false
    
    public var body: some View{
        ZStack {
            GameViewControllerRepresentable()
            
            VStack {
                Group {
                    if won {
                        Text("Congratz!!").bold()
                    }else if gameOver{
                        Text("You lose :(").bold()
                    }
                }
                .foregroundColor(Color(red: 0.65, green: 1, blue: 0.35))
                .font(.system(size: 75))
                
                Spacer()
                
                HStack {
                    Spacer()
                    Text("$\(money)")
                        .foregroundColor(Color(red: 0.65, green: 0.4, blue: 0.65))
                        .font(.system(size: 75))
                        .padding(30)
                }
            }.padding(30)
        }.ignoresSafeArea()
    }
    
    public init() {
        
    }
}

struct GameViewControllerRepresentable: UIViewControllerRepresentable{
    func makeUIViewController(context: Context) -> GameViewController {
        GameViewController()
        }
    
    func updateUIViewController(_ uiViewController: GameViewController, context: Context) {
        
        }
}

