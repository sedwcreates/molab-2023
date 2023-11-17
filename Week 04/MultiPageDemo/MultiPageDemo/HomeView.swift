//
//  HomeView.swift
//  MultiPageDemo
//
//  Created by Sophia Edwards on 10/5/23.
//
import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            Image(systemName: "house")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
          //  .environmentObject(Order())
    }
}

