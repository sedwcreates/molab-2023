//
//  ColorGrid.swift
//  MultiPageDemo
//
//  Created by Sophia Edwards on 10/5/23.

import SwiftUI

struct VerticalSmileys: View {
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    let palette = ["#363537", "#EF2D56", "#ED7D3A", "#8CD867", "#2FBF71"]


    var body: some View {
         ScrollView {
             LazyVGrid(columns: columns) {
                 ForEach(0x1f600...0x1f679, id: \.self) { value in
                     Text(String(format: "%x", value))
                     Text(emoji(value))
                         .font(.largeTitle)
                 }
             }
         }
    }


    private func emoji(_ value: Int) -> String {
        guard let scalar = UnicodeScalar(value) else { return "?" }
        return String(Character(scalar))
    }
}

struct VerticalSmileys_Previews: PreviewProvider {
    static var previews: some View {
        VerticalSmileys()
    }
}
