//
//  MockData.swift
//  LittleLemonDinnerMenu
//
//  Created by Sebastian Tleye on 25/01/2024.
//

import Foundation

struct MockData {
    
    static var foods = [MenuItem(title: "Pasta and Tomato", ingredients: [.pasta, .tomatoSauce], menuCategory: .food, orders: 2, price: 234),
                        MenuItem(title: "Vegetable Pasta", ingredients: [.pasta, .tomatoSauce, .spinach, .broccoli, .carrot], menuCategory: .food, orders: 5, price: 299),
                        MenuItem(title: "Tomato and Spinach Salad", ingredients: [.tomatoSauce, .spinach], menuCategory: .food, orders: 3, price: 150),
                        MenuItem(title: "Broccoli and Carrot Soup", ingredients: [.broccoli, .carrot], menuCategory: .food, orders: 4, price: 180),
                        MenuItem(title: "Carrot Juice", ingredients: [.carrot], menuCategory: .food, orders: 1, price: 80),
                        MenuItem(title: "Spinach and Tomato Pizza", ingredients: [.spinach, .tomatoSauce], menuCategory: .food, orders: 6, price: 250),
                        MenuItem(title: "Pasta with Broccoli", ingredients: [.pasta, .broccoli, .tomatoSauce], menuCategory: .food, orders: 3, price: 220),
                        MenuItem(title: "Tomato Sauce and Carrot Wrap", ingredients: [.tomatoSauce, .carrot], menuCategory: .food, orders: 2, price: 200),
                        MenuItem(title: "Broccoli Smoothie", ingredients: [.broccoli], menuCategory: .food, orders: 1, price: 120),
                        MenuItem(title: "Spinach and Tomato Quiche", ingredients: [.spinach, .tomatoSauce], menuCategory: .food, orders: 4, price: 280),
                        MenuItem(title: "Carrot Cake", ingredients: [.carrot], menuCategory: .food, orders: 2, price: 180),
                        MenuItem(title: "Pasta with Broccoli and Carrot", ingredients: [.pasta, .broccoli, .carrot, .tomatoSauce], menuCategory: .food, orders: 5, price: 320)]

    static var drinks = [MenuItem(title: "Orange Juice", ingredients: [.carrot], menuCategory: .drink, orders: 2, price: 120),
                         MenuItem(title: "Iced Coffee", ingredients: [.carrot], menuCategory: .drink, orders: 3, price: 150),
                         MenuItem(title: "Mint Lemonade", ingredients: [.carrot], menuCategory: .drink, orders: 1, price: 100),
                         MenuItem(title: "Strawberry Smoothie", ingredients: [.carrot], menuCategory: .drink, orders: 4, price: 180),
                         MenuItem(title: "Green Tea", ingredients: [.carrot], menuCategory: .drink, orders: 2, price: 90),
                         MenuItem(title: "Cucumber Cooler", ingredients: [.carrot], menuCategory: .drink, orders: 3, price: 130),
                         MenuItem(title: "Chocolate Milkshake", ingredients: [.carrot], menuCategory: .drink, orders: 2, price: 160),
                         MenuItem(title: "Pineapple Punch", ingredients: [.carrot], menuCategory: .drink, orders: 4, price: 200)]
    
    static var desserts = [MenuItem(title: "Chocolate Brownie", ingredients: [.carrot], menuCategory: .dessert, orders: 2, price: 150),
                           MenuItem(title: "Vanilla Ice Cream", ingredients: [.carrot], menuCategory: .dessert, orders: 3, price: 120),
                           MenuItem(title: "Strawberry Cheesecake", ingredients: [.carrot], menuCategory: .dessert, orders: 1, price: 180),
                           MenuItem(title: "Caramel Pudding", ingredients: [.carrot], menuCategory: .dessert, orders: 4, price: 200)]
    
}
