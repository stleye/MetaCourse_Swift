//
//  MenuItemDetailsView.swift
//  LittleLemonDinnerMenu
//
//  Created by Sebastian Tleye on 24/01/2024.
//

import SwiftUI

struct MenuItemDetailsView: View {
    
    var menuItem: MenuItem
    
    var body: some View {
        VStack {
            Image("littleLemonLogo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 400, height: 400)
            Text("Price:")
                .bold()
            Text("\(menuItem.price)")
            Text("Ordered:")
                .bold()
            Text("\(menuItem.orders)")
            Text("Ingredients:")
                .bold()
            ForEach(menuItem.ingredients) {
                Text($0.rawValue)
            }
        }
    }
}

#Preview {
    MenuItemDetailsView(menuItem: MockData.foods[0])
}
