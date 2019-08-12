//
//  DrinkDetail.swift
//  XcodeDemo
//
//  Created by JMcCloskey on 12/08/19.
//  Copyright © 2019 JMcCloskey. All rights reserved.
//

import SwiftUI

struct DrinkDetail: View {
    var drink: Drink
    
    var body: some View {
        List{
            ZStack (alignment: .bottom){
                Image(drink.imageName)
                .resizable()
                    .aspectRatio(contentMode: .fit)
                Rectangle()
                    .frame(height: 80)
                    .opacity(0.25)
                    .blur(radius: 10)
                HStack{
                    VStack(alignment: .leading, spacing: 8){
                        Text(drink.name)
                            .foregroundColor(.white)
                            .font(.largeTitle)
                    }
                    .padding(.leading)
                    .padding(.bottom)
                    Spacer()
                }
            }
            
            .listRowInsets(EdgeInsets())
            
            VStack(alignment: .leading){
                Text(drink.description)
                    .foregroundColor(.primary)
                    .font(.body)
                    .lineLimit(nil)
                    .lineSpacing(12)
                HStack{
                    Spacer()
                    OrderButton()
                    Spacer()
                }.padding(.top, 50)
            }
            

        }
        .edgesIgnoringSafeArea(.top)
        .navigationBarHidden(true)
        
    }
}

struct OrderButton: View {
    var body: some View {
        Button(action: {}){
            Text("Order Now")
            }.frame(width: 200, height: 50)
            .foregroundColor(.white)
            .font(.headline)
            .background(Color.blue)
    }
}

#if DEBUG
struct DrinkDetail_Previews: PreviewProvider {
    static var previews: some View {
        DrinkDetail(drink: drinkData[0])
    }
}
#endif
