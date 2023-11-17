//
//  DiscoverView.swift
//  MultiPageDemo
//
//  Created by Sophia Edwards on 10/5/23.
//

import SwiftUI

struct DiscoverView: View {
    var body: some View {
        VStack {
            Image(systemName: "star")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct DiscoverView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverView()
    }
}
