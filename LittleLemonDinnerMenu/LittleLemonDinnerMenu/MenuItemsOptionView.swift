//
//  MenuItemsOptionView.swift
//  LittleLemonDinnerMenu
//
//  Created by Sebastian Tleye on 24/01/2024.
//

import SwiftUI

enum FilterCategories: String, CaseIterable, Identifiable {
    
    var id: String { return self.rawValue }
    
    enum Subcategory: String, CaseIterable, Identifiable {
        case food = "Food"
        case drink = "Drink"
        case dessert = "Dessert"
        case mostPopular = "Most Popular"
        case price = "Price $-$$$"
        case az = "A-Z"
        var id: String { self.rawValue }
    }

    case selectedCategories = "SELECTED CATEGORIES"
    case sortBy = "SORT BY"
    
    var subcategories: [Subcategory] {
        switch self {
        case .selectedCategories:
            return [Subcategory.food, .drink, .dessert]
        case .sortBy:
            return [Subcategory.mostPopular, .price, .az]
        }
    }
}

struct MenuItemsOptionView: View {
    var body: some View {
        Form {
            ForEach(FilterCategories.allCases) { category in
                Section(header: Text(category.rawValue)) {
                    List {
                        ForEach(category.subcategories) { subcategory in
                            Text(subcategory.rawValue)
                        }
                    }
                }
            }
        }.navigationTitle(Text("Filter"))
    }
}

#Preview {
    MenuItemsOptionView()
}
