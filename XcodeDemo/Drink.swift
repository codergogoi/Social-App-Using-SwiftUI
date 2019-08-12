//
//  Drink.swift
//  XcodeDemo
//
//  Created by JMcCloskey on 12/08/19.
//  Copyright © 2019 JMcCloskey. All rights reserved.
//

import SwiftUI


struct Drink : Hashable, Codable, Identifiable {
    
    var id: Int
    var name: String
    var imageName: String
    var category: Category
    var description: String
    
    enum Category: String, CaseIterable, Codable, Hashable {
        case hot = "hot"
        case cold = "cold"
    }
    
}
