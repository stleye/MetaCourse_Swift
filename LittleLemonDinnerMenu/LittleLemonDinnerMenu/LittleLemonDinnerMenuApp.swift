//
//  LittleLemonDinnerMenuApp.swift
//  LittleLemonDinnerMenu
//
//  Created by Sebastian Tleye on 24/01/2024.
//

import SwiftUI

@main
struct LittleLemonDinnerMenuApp: App {
    var body: some Scene {
        WindowGroup {
            MenuItemsView(viewModel: MenuViewViewModel())
        }
    }
}
