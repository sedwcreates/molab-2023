//
//  Puns.swift
//  PickMeUp
//
//  Created by Sophia Edwards on 11/16/23.
//

import Foundation
import SwiftUI

var puns = ["How can you tell if a pig is hot? It's bacon", "Did you hear about the cat that ate a lemon? Now it's a sour puss", " What do you give the dentist of the year? A little plaque", "When is a door not a door? When it's ajar", "What do you call a bear with no teeth? A gummy bear", "Why did the coach go to the bank? To get his quarter back", "What’s more unbelievable than a talking dog? A spelling bee"]

struct PunView: View {
    var randomPun : String
    var body: some View {
        Text("How ya like THESE apples😋🍎?!")
            .font(Font.custom("Archivo", size: 24))
        Text("\(randomPun)")
            .font(Font.custom("Archivo", size: 24))
            .padding()
    }
}

struct Puns: View {
    var body: some View {
        NavigationView{
            VStack (spacing: 30){
                Text("This can surely turn that frown upside down!")
                    .font(Font.custom("Archivo", size: 36))
                NavigationLink(destination: PunView(randomPun:  puns.randomElement()!)){
                    Text("This better not be a dad joke...")
                        .font(Font.custom("Archivo", size: 24))
                    }
            }
        }
        .padding()
        }
}

struct Puns_Previews: PreviewProvider {
    static var previews: some View {
        Puns()
    }
}

