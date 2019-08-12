//
//  DrinkItem.swift
//  XcodeDemo
//
//  Created by JMcCloskey on 12/08/19.
//  Copyright © 2019 JMcCloskey. All rights reserved.
//

import SwiftUI

struct DrinkItem: View {
        
    var drink: Drink
    var body: some View {
        VStack(alignment: .leading, spacing: 16.0) {
            Image(drink.imageName)
            .resizable()
            .renderingMode(.original)
            .aspectRatio(contentMode: .fill)
            .frame(width: 300, height: 170)
            .cornerRadius(10)
            .shadow(radius: 10)
            
            Text(drink.name)
                .foregroundColor(.primary)
                .font(.headline)
            Text(drink.description)
                .font(.subheadline)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.leading)
                .lineLimit(2)
                .frame(height: 40)
                        
        }
    }
}

#if DEBUG
struct DrinkItem_Previews: PreviewProvider {
    static var previews: some View {
        DrinkItem(drink: drinkData[0])
    }
}
#endif
