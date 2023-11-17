//
//  NavigationView.swift
//  MultiPageDemo
//
//  Created by Sophia Edwards on 10/5/23.
//

import SwiftUI

struct NavigationView: View {
 //   @EnvironmentObject var navigation: Navigation
    
    var body: some View {
        NavigationStack{
            List{
                Section{
 //                   ForEach(navigation.items){ item in
                        HStack{
//                            Text(item.name)
                        }
                        
                    }
                }
                
            }
        }
    }
//}

struct NavigationView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView()
    }
}
