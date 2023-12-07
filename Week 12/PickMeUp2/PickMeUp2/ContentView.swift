//
//  ContentView.swift
//  PickMeUp2
//
//  Created by Sophia Edwards on 12/6/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color.indigo, Color.yellow, Color.orange, Color.pink]),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                    .edgesIgnoringSafeArea(.all)
                    .overlay(
                        VStack {
                            Text("So, you need a pick-me-up?")
                                .font(Font.custom("Archivo", size: 82))
                                .padding()
                        }
                    )
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

