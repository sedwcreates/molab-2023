//  
//  MainView.swift
//  TabViewTest
//
//  Created by Sophia Edwards on 11/16/23.
//

import Foundation
import SwiftUI

struct MainView: View {
    var body: some View{

        TabView{
            ContentView()
                .tabItem{
                    Label("Tab1", systemImage:"bubbles.and.sparkles")
                }
            SecondView()
                .tabItem{
                    Label("Tab2", systemImage:"heart")
                }
            ThirdView()
                .tabItem{
                    Label("Tab3", systemImage:"star")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
