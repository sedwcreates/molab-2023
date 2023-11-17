//
//  ContentView.swift
//  TabViewTest
//
//  Created by Sophia Edwards on 11/16/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "bubbles.and.sparkles")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello world!")
                .font(Font.custom("Archivo", size: 48))
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
