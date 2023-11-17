//
//  Horoscopes.swift
//  PickMeUp
//
//  Created by Sophia Edwards on 11/16/23.
//

import Foundation
import SwiftUI

var horoscopes = ["Spend some time figuring out what you want to accomplish for yourself", "Distraction can give you a sense of normalcy", "You’re allowed to be delicate sometimes", "Give yourself space to contemplate intense ideas", "Philosophical thinking can be a useful tool for gaining perspective in overwhelming moments"]

struct HoroscopeView: View {
    var randomHoroscope : String
    var body: some View {
        Text("This oughta do the trick!😉")
            .font(Font.custom("Archivo", size: 24))
        Text("\(randomHoroscope)")
            .font(Font.custom("Archivo", size: 24))
            .padding()
    }
}
    
struct Horoscopes: View {
    var body: some View {
        NavigationView{
            VStack (spacing: 30){
                Text("Horoscopes can be the key to introspection...")
                    .font(Font.custom("Archivo", size: 36))
                NavigationLink(destination: HoroscopeView(randomHoroscope:  horoscopes.randomElement()!)){
                    Text("What do the stars say about me~")
                        .font(Font.custom("Archivo", size: 24))
                    }
            }
        }
        .padding()
        }
    }


struct Horoscopes_Previews: PreviewProvider {
    static var previews: some View {
        Horoscopes()
    }
}

