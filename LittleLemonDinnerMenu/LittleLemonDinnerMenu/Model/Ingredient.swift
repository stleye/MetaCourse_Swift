//
//  Ingredient.swift
//  LittleLemonDinnerMenu
//
//  Created by Sebastian Tleye on 25/01/2024.
//

import Foundation

enum Ingredient: String, Identifiable {
    
    var id: String { self.rawValue }
    
    case spinach = "Spinach"
    case broccoli = "Broccoli"
    case carrot = "Carrot"
    case pasta = "Pasta"
    case tomatoSauce = "Tomato sauce"
}
