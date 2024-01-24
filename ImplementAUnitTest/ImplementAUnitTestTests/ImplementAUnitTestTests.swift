//
//  ImplementAUnitTestTests.swift
//  ImplementAUnitTestTests
//
//  Created by Sebastian Tleye on 24/01/2024.
//

import XCTest
@testable import ImplementAUnitTest

final class ImplementAUnitTestTests: XCTestCase {

    func test_calculateTotal_salesTaxTwentyPercent() {
        var items = [CheckoutItem(name: "Fish and chips", price: 625),
                     CheckoutItem(name: "Mashed Potatos", price: 305),
                     CheckoutItem(name: "Pizza", price: 1225),
                     CheckoutItem(name: "Cheese Burger", price: 799)]
        let taxPercentage = 20
        let totalToPay = calculateTotal(items: items, localTaxPercent: taxPercentage)
        XCTAssertEqual(totalToPay, 3544)
    }

}

