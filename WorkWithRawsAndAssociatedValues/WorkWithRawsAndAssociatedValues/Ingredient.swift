//
//  Ingredient.swift
//  WorkWithRawsAndAssociatedValues
//
//  Created by Sebastian Tleye on 23/01/2024.
//

import Foundation

enum Ingredient: String, CaseIterable {
    case lettuce = "Romaine Lettuce"
    case tomato = "Cherries"
    case egg = "Chicken Eggs"
    case mayonaise = "Homemade Mayonaise"
    
    func printDescription() {
        switch self {
        case .lettuce:
            print("We use \(self.rawValue) that has the richest flavor from all the lettuces.")
        case .tomato:
            print("We use \(self.rawValue), you must try them.")
        case .egg:
            print("\(self.rawValue) from our own farm.")
        case .mayonaise:
            print("We use \(self.rawValue), delicious.")
        }
    }
    
}

enum RecipeInformation {
    case allergens(information: String)
    
    
    func printDescription() {
        switch self {
        case .allergens(let information):
            print("The meal includes the following allergens: \(information)")
        }
    }
}

struct Test {
    
    let recipeInformation = RecipeInformation.allergens(information: "peanuts, milk and gluten")
    
    
    
}
