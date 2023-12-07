//
//  Horoscopes.swift
//  PickMeUp2
//
//  Created by Sophia Edwards on 12/6/23.
//

import Foundation
import SwiftUI

var horoscopes = ["Spend some time figuring out what you want to accomplish for yourself", "Distraction can give you a sense of normalcy", "You’re allowed to be delicate sometimes", "Give yourself space to contemplate intense ideas", "Philosophical thinking can be a useful tool for gaining perspective in overwhelming moments"]
var randomHoroscope = ""
//var buttonPressCount = 0


struct HoroscopeView: View {
    @State private var buttonText = "Don't be shy!"
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color.indigo, Color.yellow]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .edgesIgnoringSafeArea(.all)
            VStack(alignment: .center){
                Text("This oughta do the trick!😉")
                    .font(Font.custom("Archivo", size: 36))
                    .multilineTextAlignment(.center)
                    .padding()
                //Quote Changing Button
                Button(action: {
                    changeButtonText()
                    chooseAnotherHoroscope()
                }) {
                    Text(buttonText)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(8)
                }
                .padding()
                Text(randomHoroscope)
                    .font(Font.custom("Archivo", size: 36))
                    .multilineTextAlignment(.center)
                    .padding()
            }
        }
    }
    // Function to change the button text
    func changeButtonText() {
        buttonText = "What, you didn't like that one?!"
    }

    // Function to choose a random string from the array
    func chooseAnotherHoroscope() {
        let randomOption = horoscopes.randomElement()
        randomHoroscope = randomOption!
    }
}


    
struct Horoscopes: View {
    var body: some View {
        NavigationView{
            LinearGradient(
                gradient: Gradient(colors: [Color.indigo, Color.yellow]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .edgesIgnoringSafeArea(.all)
            .overlay(
            ZStack {
                VStack (alignment: .center, spacing: 10.0){
                    Text("Horoscopes can be the key to introspection...")
                        .font(Font.custom("Archivo", size: 36))
                        .multilineTextAlignment(.center)
                    
                    NavigationLink(destination: HoroscopeView()){
                        Text("What do the stars say about me~")
                            .font(Font.custom("Archivo", size: 24))
                    }
                }
            }
            .padding()
            )
        }
    }
}



struct Horoscopes_Previews: PreviewProvider {
    static var previews: some View {
        Horoscopes()
    }
}


