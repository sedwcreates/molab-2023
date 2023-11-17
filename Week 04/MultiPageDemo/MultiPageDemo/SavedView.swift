//
//  SavedView.swift
//  MultiPageDemo
//
//  Created by Sophia Edwards on 10/5/23.
//

import SwiftUI

struct SavedView: View {
    var body: some View {
        VStack {
            Image(systemName: "heart")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct SavedView_Previews: PreviewProvider {
    static var previews: some View {
        SavedView()
    }
}
