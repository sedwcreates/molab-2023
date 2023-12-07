//
//  Puns.swift
//  PickMeUp2
//
//  Created by Sophia Edwards on 12/6/23.
//

import Foundation
import SwiftUI

var puns = ["How can you tell if a pig is hot? It's bacon", "Did you hear about the cat that ate a lemon? Now it's a sour puss", " What do you give the dentist of the year? A little plaque", "When is a door not a door? When it's ajar", "What do you call a bear with no teeth? A gummy bear", "Why did the coach go to the bank? To get his quarter back", "What’s more unbelievable than a talking dog? A spelling bee"]
var randomPun = ""

struct PunView: View {
    @State private var buttonText = "Click for a real knee-slapper"
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color.orange, Color.pink]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .edgesIgnoringSafeArea(.all)
            VStack(alignment: .center){
                Text("How ya like THESE apples😋🍎?!")
                    .font(Font.custom("Archivo", size: 36))
                    .multilineTextAlignment(.center)
                    .padding()
                //Quote Changing Button
                Button(action: {
                    changeButtonText()
                    chooseAnotherPun()
                }) {
                    Text(buttonText)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(8)
                }
                .padding()
                Text(randomPun)
                    .font(Font.custom("Archivo", size: 36))
                    .multilineTextAlignment(.center)
                    .padding()
            }
        }
    }
    // Function to change the button text
    func changeButtonText() {
        buttonText = "Tough crowd..."
    }
    
    // Function to choose a random string from the array
    func chooseAnotherPun() {
        let randomOption = puns.randomElement()
        randomPun = randomOption!
    }
}

struct Puns: View {
    var body: some View {
        NavigationView{
            ZStack {
                LinearGradient(
                    gradient: Gradient(colors: [Color.orange, Color.pink]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .edgesIgnoringSafeArea(.all)
                .overlay(
                VStack (alignment: .center, spacing: 10.0){
                    Text("This can surely turn that frown upside down!")
                        .font(Font.custom("Archivo", size: 36))
                    NavigationLink(destination: PunView()){
                        Text("This better not be a dad joke...")
                            .font(Font.custom("Archivo", size: 24))
                    }
                }
                    .padding()
                )
            }
        }
    }
}
    
struct Puns_Previews: PreviewProvider {
    static var previews: some View {
        Puns()
    }
}
