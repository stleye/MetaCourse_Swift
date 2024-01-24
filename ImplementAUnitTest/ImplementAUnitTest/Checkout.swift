//
//  Checkout.swift
//  ImplementAUnitTest
//
//  Created by Sebastian Tleye on 24/01/2024.
//

import Foundation

struct CheckoutItem {
    let name: String
    let price: Int
}


func calculateTotal(items: [CheckoutItem], localTaxPercent: Int) -> Int {
    let itemsTotal = items.reduce(0) { $0 + $1.price }
    let taxAmount = itemsTotal * localTaxPercent / 100
    return itemsTotal + taxAmount
}
