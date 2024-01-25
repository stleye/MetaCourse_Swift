//
//  MenuItemTests.swift
//  LittleLemonDinnerMenuTests
//
//  Created by Sebastian Tleye on 25/01/2024.
//

import XCTest
@testable import LittleLemonDinnerMenu

final class MenuItemTests: XCTestCase {

    func test_menuItemTitleShouldBeEqualToInitializedValue() {
        let menuItem = MenuItem(title: "Pizza", ingredients: [], menuCategory: .food, orders: 10, price: 100)
        XCTAssertEqual(menuItem.title, "Pizza")
    }
    
    func test_MenuItemIngredientsShouldBeEqualToInitializedValues() {
        let menuItem = MenuItem(title: "Pizza", ingredients: [.pasta, .broccoli], menuCategory: .food, orders: 10, price: 100)
        XCTAssertEqual(menuItem.title, "Pizza")
    }

}
