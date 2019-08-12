//
//  Data.swift
//  XcodeDemo
//
//  Created by JMcCloskey on 12/08/19.
//  Copyright © 2019 JMcCloskey. All rights reserved.
//

import Foundation


let drinkData: [Drink] = load("mydata.json")

func load<T:Decodable>(_ filename: String, as type: T.Type = T.self) -> T {
    
    
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("Could not find \(filename) in main Bundle")
    }
    
    do{
        data  = try Data(contentsOf: file)
    }catch{
        fatalError("could not load \(filename) from the main bundle : \n \(error)")
    }
    
    do{
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    }catch{
        fatalError("Unable to decode the file data as \(T.self) error: \(error)")
    }
    
}
