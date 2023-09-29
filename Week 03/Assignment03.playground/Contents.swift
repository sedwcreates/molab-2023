import SwiftUI

//Random element from an array: https://www.educative.io/answers/how-to-get-a-random-element-from-an-array-in-swift
//Apple's color documentation: https://developer.apple.com/documentation/swiftui/color
//https://developer.apple.com/design/human-interface-guidelines/color#system-colors
//Apple's Button Documentation: https://developer.apple.com/documentation/swiftui/button
//Paul Hudson SwiftUi Button: https://www.youtube.com/watch?v=-3pTfaE0bSg


// Step One: Initialize colors from SwiftUI and put them in an array
let skyBlue = Color(red: 0.4627, green: 0.8392, blue: 1.0)
let lemonYellow = Color(hue: 0.1639, saturation: 1, brightness: 1)
let steelGray = Color(white: 0.4745)
var colorPalette = [skyBlue, lemonYellow, steelGray]
var randomizeColor = false
//let black: Color
//let blue: Color

                    //var blue: <#type#>  = <#initializer#>;Color.self(<#CGColor#>)
                    //static let brown: Color
                    //var colorPalette = [black, blue, brown]

// Step Two: Create canvas to display image
let canvas = CGSize(width: 500, height: 200)
let renderer = UIGraphicsImageRenderer(size: canvas)

// Step Three: Create Button to trigger color change
Button(action: {randomizeColor.toggle()}) {
    Label("⭐️ Randomize Color 🫧", systemImage: "arrow.up")
}

if randomizeColor == true {
    let image = renderer.image { context in
        Image(systemName: "globe")
            .imageScale(.large)
            //.foregroundColor(colorPalette[i])
            .foregroundColor(colorPalette[colorPicker()])
        Text("Hello, world!")
    }
}

else {
    let image = renderer.image { context in
        Image(systemName: "globe")
            .imageScale(.large)
            //.foregroundColor(colorPalette[i])
            .foregroundColor(.accentColor)
        Text("👩🏽‍🎤: PULL THE LEVER KRONK!!!!! ")
    }
}

//Step : Function to randomly pick color of the globe from the colorPalette array (return the index position)
func colorPicker() -> Int {
    var color = colorPalette.randomElement()!
    var colorIndex = 0
    for _ in colorPalette {
        if (color == colorPalette[colorIndex]){
            print("Color: ", color, "Color Index:", colorIndex)
            break
        }
        else{
            colorIndex += 1
        }
    }
    return colorIndex
}
