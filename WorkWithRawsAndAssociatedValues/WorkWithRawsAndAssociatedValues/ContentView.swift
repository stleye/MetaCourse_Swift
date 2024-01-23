//
//  ContentView.swift
//  WorkWithRawsAndAssociatedValues
//
//  Created by Sebastian Tleye on 23/01/2024.
//

import SwiftUI

struct ContentView: View {
        
    var body: some View {
        VStack {
            ForEach(Ingredient.allCases, id: \.self) { ingredient in
                Button(ingredient.rawValue) {
                    ingredient.printDescription()
                }
            }
            Button("Allergens") {
                RecipeInformation.allergens(information: "peanuts, milk, gluten").printDescription()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
