//
//  Model.swift
//  CreateASet
//
//  Created by Sebastian Tleye on 23/01/2024.
//

import Foundation

struct Model {
    
    func createSets() {
        
        let reservationsInPerson: Set<String> = ["000-345-3441", "000-325-3443"]
        let reservationsOverInternet: Set<String> = ["000-345-6223", "000-345-7223"]
        let reservationsOverPhone: Set<String> = ["000-345-3443", "000-345-5223"]
        
        let inPersonAndOverPhone = reservationsInPerson.union(reservationsOverPhone)
        print(inPersonAndOverPhone)
        
        let allPhoneNumbers = inPersonAndOverPhone.union(reservationsOverInternet)
        print(allPhoneNumbers)
        
        var confirmationCodes: Set<String> = ["LL3450", "LL3451"]
        confirmationCodes.insert("LL3452")
        confirmationCodes.insert("LL3453")
        confirmationCodes.insert("LL3454")
        
    }
    
    
}
