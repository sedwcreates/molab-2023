//
//  ContentView.swift
//  MusicKitTest
//
//  Created by Sophia Edwards on 12/4/23.
//

import SwiftUI
import Charts

var greeting = "Hello, playground"

struct Insect {
    let name: String
    let family: String
    let wingLength: Double
    let wingWidth: Double
    let weight: Double
}


var data: [Insect] = [
    Insect(name: "Hepialidae", family: "Lepidoptera", wingLength: 61, wingWidth: 52, weight: 22),
    Insect(name: "Danaidae", family: "Lepidoptera", wingLength: 60, wingWidth: 48, weight: 24),
    Insect(name: "Riodinidae", family: "Lepidoptera", wingLength: 53, wingWidth: 43, weight: 18),
    // ...
]

struct ContentView: View {
    var body: some View {
        VStack {
            Chart(data) {
                PointMark(
                    x: .value("Wing Length", $0.wingLength),
                    y: .value("Wing Width", $0.wingWidth)
                )
                .foregroundStyle(by: .value("Family", $0.family))
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
