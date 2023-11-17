// Code is from Hacking with Swift : https://www.youtube.com/watch?v=nA6Jo6YnL9g
//  ContentView.swift
//  NavigationViewTest
//
//  Created by Sophia Edwards on 11/16/23.
//

import SwiftUI

struct ResultView: View {
    var choice: String
    var body: some View {
        Text("You chose \(choice)")
    }
}

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack (spacing: 30){
                Text("Flip this coin")
                NavigationLink(destination: ResultView(choice: "Heads")){
                    Text("Heads")
                }
                NavigationLink(destination: ResultView(choice: "Tails")){
                    Text("Tails")
                }
            }
            .navigationBarTitle("Navigation")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
