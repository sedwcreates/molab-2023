//
//  Quotes.swift
//  PickMeUp
//
//  Created by Sophia Edwards on 11/16/23.
//

import Foundation
import SwiftUI

var quotes = ["People come for me all the time they just don’t find me - Karen Huger", "Why be so nasty and so rude when I can be so fierce and so successful? - Nene Leakes", "Don’t check for me unless you have a check for me - Kandi Burruss", "Who ‘gon check me boo ?! - Shereé Whitfield", "Unique, that’s what you are - Beyoncé", "All these bitches is my sons - Nicki Minaj", "It ain’t that deep, either way - Kelela", "On I go - Fiona Apple", "It’s a wrap - Mariah Carey"]

struct QuoteView: View {
    var randomQuote : String
    var body: some View {
        Text("Here's your pick-me-up, hot off the press!")
            .font(Font.custom("Archivo", size: 24))
        Text("\(randomQuote)")
            .font(Font.custom("Archivo", size: 24))
            .padding()
    }
}

struct Quotes: View {
    var body: some View {
        NavigationView{
            VStack (spacing: 30){
                Text("Right this way for a motivational quote 😙✨")
                    .font(Font.custom("Archivo", size: 36))
                NavigationLink(destination: QuoteView(randomQuote:  quotes.randomElement()!)){
                    Text("Show me the way~")
                        .font(Font.custom("Archivo", size: 24))
                    }
            }
        }
        .padding()
    }
}


struct Quotes_Previews: PreviewProvider {
    static var previews: some View {
        Quotes()
    }
}


