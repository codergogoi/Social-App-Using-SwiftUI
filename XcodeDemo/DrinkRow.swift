//
//  DrinkRow.swift
//  XcodeDemo
//
//  Created by JMcCloskey on 12/08/19.
//  Copyright © 2019 JMcCloskey. All rights reserved.
//

import SwiftUI

struct DrinkRow: View {
    
    var categoryName: String
    var drinks:[Drink]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(self.categoryName)
                .font(.title)
            ScrollView(.horizontal, showsIndicators: false){
                HStack {
                   ForEach(self.drinks, id: \.id){ drink in
                    
                    NavigationLink(destination: DrinkDetail(drink: drink)) {
                        
                        DrinkItem(drink: drink)
                           .frame(width: 300)
                           .padding(.trailing, 30)

                        }
                    }
                       
               }
            }
        }
        
    }
}

#if DEBUG
struct DrinkRow_Previews: PreviewProvider {
    static var previews: some View {
        DrinkRow(categoryName: "Hot Drinks", drinks: drinkData)
    }
}
#endif
