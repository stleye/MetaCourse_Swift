//
//  MenuItem.swift
//  LittleLemonDinnerMenu
//
//  Created by Sebastian Tleye on 25/01/2024.
//

import Foundation

protocol MenuItemProtocol {
    var id: UUID { get }
    //var price: Double { get }
    var title: String { get }
    var menuCategory: MenuCategory { get }
    var orders: Int { get set }
    var price: Int { get set }
    var ingredients: [Ingredient] { get set }
}

struct MenuItem: Identifiable, MenuItemProtocol {

    init(title: String,
         ingredients: [Ingredient],
         menuCategory: MenuCategory,
         orders: Int,
         price: Int) {
        self.id = UUID()
        self.menuCategory = menuCategory
        self.orders = orders
        self.price = price
        self.title = title
        self.ingredients = ingredients
    }

    var title: String
    var ingredients: [Ingredient]
    var menuCategory: MenuCategory
    var orders: Int
    var price: Int
    var id: UUID
}
