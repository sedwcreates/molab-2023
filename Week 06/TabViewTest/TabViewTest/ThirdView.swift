//
//  ThirdView.swift
//  TabViewTest
//
//  Created by Sophia Edwards on 11/16/23.
//

import Foundation
import SwiftUI

struct ThirdView: View {
    var body: some View {
        VStack {
            Image(systemName: "star")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Welcome to the third view!")
                .font(Font.custom("Archivo", size: 48))
        }
        .padding()
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}
