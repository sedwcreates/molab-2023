//
//  Quotes.swift
//  PickMeUp3
//
//  Created by Sophia Edwards on 12/14/23.
//

import Foundation
import SwiftUI

var quotes = ["People come for me all the time they just don’t find me - Karen Huger", "Why be so nasty and so rude when I can be so fierce and so successful? - Nene Leakes", "Don’t check for me unless you have a check for me - Kandi Burruss", "Who ‘gon check me boo ?! - Shereé Whitfield", "Unique, that’s what you are - Beyoncé", "All these bitches is my sons - Nicki Minaj", "It ain’t that deep, either way - Kelela", "On I go - Fiona Apple", "It’s a wrap - Mariah Carey"]
var buttonPressCount = 0
var randomQuote = ""

struct QuoteView: View {
    @State private var buttonText = "You know you wanna😏"
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color.yellow, Color.orange]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .edgesIgnoringSafeArea(.all)
            VStack(alignment: .center){
                Text("Click the button to get your pick-me-up, hot off the press!")
                    .font(Font.custom("Archivo", size: 36))
                    .multilineTextAlignment(.center)
                    .padding()
                
                //Quote Changing Button
                Button(action: {
                    changeButtonText()
                    chooseAnotherQuote()
                }) {
                    Text(buttonText)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(8)
                }
                .padding()
                Text(randomQuote)
                    .font(Font.custom("Archivo", size: 36))
                    .multilineTextAlignment(.center)
                    .padding()
            }
            .padding()
        }
    }
    
    // Function to change the button text
    func changeButtonText() {
        buttonPressCount += 1
        buttonText = "Let's keep these good vibes going x\(buttonPressCount)"
    }
    
    // Function to choose a random string from the array
    func chooseAnotherQuote() {
        let randomOption = quotes.randomElement()
        randomQuote = randomOption!
    }
    
}

struct Quotes: View {
    var body: some View {
        NavigationView{
            ZStack {
                LinearGradient(
                    gradient: Gradient(colors: [Color.yellow, Color.orange]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .edgesIgnoringSafeArea(.all)
                VStack (alignment: .center, spacing: 10.0){
                        Text("Right this way for a motivational quote 😙")
                        .font(Font.custom("Archivo", size: 36))
                        .multilineTextAlignment(.center)
                        
                        NavigationLink(destination: QuoteView()){
                            Text("Show me the way~")
                                .font(Font.custom("Archivo", size: 24))
                        }
                    }
                .padding()
            }
        }
    }
}


struct Quotes_Previews: PreviewProvider {
    static var previews: some View {
        Quotes()
    }
}



