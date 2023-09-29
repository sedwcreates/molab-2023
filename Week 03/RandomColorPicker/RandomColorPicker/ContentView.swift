//
//  ContentView.swift
//  RandomColorPicker
//
//  Created by Sophia Edwards on 9/28/23.
//

import SwiftUI

// Step One: Initialize colors from SwiftUI and put them in an array
let skyBlue = Color(red: 0.4627, green: 0.8392, blue: 1.0)
let lemonYellow = Color(hue: 0.1639, saturation: 1, brightness: 1)
let steelGray = Color(white: 0.4745)
var colorPalette = [skyBlue, lemonYellow, steelGray]
var bools = [false, true]
var randomizeColor = bools[1]
// Step Two: Display color-changing globe
struct ContentView: View {
    var body: some View {
        VStack {
            // Step Three: Create Button to trigger color change
            Button(action: {randomizeColor = bools.randomElement()!}) {
                Label("⭐️ Randomize Globe Color 🫧", systemImage: "arrow.right")
            }

            if randomizeColor == true {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(colorPalette.randomElement()!)
                Text("Hello, world!")
            }
            else {
                Image(systemName: "globe")
                    .padding(.vertical)
                        .imageScale(.large)
                        .foregroundColor(.accentColor)
                    Text("👩🏽‍🎤: PULL THE LEVER KRONK!!!!! ")
            }
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
