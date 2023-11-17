//
//  SecondView.swift
//  TabViewTest
//
//  Created by Sophia Edwards on 11/16/23.
//

import Foundation
import SwiftUI

struct SecondView: View {
    var body: some View {
        VStack {
            Image(systemName: "heart")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Welcome to the second view!")
                .font(Font.custom("Archivo", size: 48))
        }
        .padding()
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
