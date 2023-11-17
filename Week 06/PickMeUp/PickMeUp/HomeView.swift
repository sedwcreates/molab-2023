//
//  HomeView.swift
//  PickMeUp
//
//  Created by Sophia Edwards on 11/16/23.
//

import Foundation
import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView{
            ContentView()
                .tabItem{
                    Label("Home", systemImage:"bubbles.and.sparkles")
                }
            Horoscopes()
                .tabItem{
                    Label("Insightful", systemImage:"moon")
                }
            Quotes()
                .tabItem{
                    Label("Motivational", systemImage:"heart")
                }
            Puns()
                .tabItem{
                    Label("Funny", systemImage:"star")
                }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
