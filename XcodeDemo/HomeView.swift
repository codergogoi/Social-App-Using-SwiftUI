//
//  ContentView.swift
//  XcodeDemo
//
//  Created by JMcCloskey on 28/07/19.
//  Copyright © 2019 JMcCloskey. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    
    var categories: [String: [Drink]] {
        .init(
            grouping: drinkData,
            by: {$0.category.rawValue}
        )
    }
    
    var body: some View {
        NavigationView{
            List(categories.keys.sorted(), id: \.self){ category in
                
                DrinkRow(categoryName: "\(category) Drinks".uppercased(), drinks: self.categories[category]!)
                    .frame(height: 320)
                    .padding(.top)
                    .padding(.bottom)
            }
            
        }.navigationBarTitle(Text("Drinks Type")).foregroundColor(.primary)
    }
    
}
 
//MARK: UI Preview

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
#endif
