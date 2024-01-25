//
//  ViewModel.swift
//  LittleLemonDinnerMenu
//
//  Created by Sebastian Tleye on 24/01/2024.
//

import Foundation

class MenuViewViewModel: ObservableObject {
    
    //@Published var model = Model()

    var foodMenuItems: [MenuItem] {
        return MockData.foods
    }

    var drinkMenuItems: [MenuItem] {
        return MockData.drinks
    }

    var dessertMenuItems: [MenuItem] {
        return MockData.desserts
    }
    
    func menuItems(for category: MenuCategory) -> [MenuItem] {
        switch category {
        case .food:
            return foodMenuItems
        case .drink:
            return drinkMenuItems
        case .dessert:
            return dessertMenuItems
        }
    }

}
