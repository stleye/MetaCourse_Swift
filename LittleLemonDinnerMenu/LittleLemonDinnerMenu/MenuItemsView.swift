//
//  MenuItemsView.swift
//  LittleLemonDinnerMenu
//
//  Created by Sebastian Tleye on 24/01/2024.
//

import SwiftUI

struct MenuItemsView: View {

    @State private var showingSheet = false
    @ObservedObject var viewModel = MenuViewViewModel()

    var body: some View {
        NavigationStack {
            ScrollView {
                categoryView(for: .food)
                    .padding(.bottom)
                categoryView(for: .drink)
                    .padding(.bottom)
                categoryView(for: .dessert)
                    .padding(.bottom)
            }
            .toolbar {
                ToolbarItem {
                    Button(action: {
                        showingSheet.toggle()
                    }, label: {
                        Image(systemName: "line.3.horizontal.decrease.circle")
                    })
                    .sheet(isPresented: $showingSheet) {
                        MenuItemsOptionView()
                        Button("Dismiss", action: { showingSheet.toggle() })
                    }
                }
            }
        }
    }
    
    func categoryView(for category: MenuCategory) -> some View {
        CategoryView(menuItems: viewModel.menuItems(for: category))
            .navigationTitle("Menu")
    }
}

struct CategoryView: View {

    var menuItems: [MenuItem]

    var body: some View {
        Text(menuItems.first?.menuCategory.rawValue ?? "")
            .font(.title2)
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))]) {
            ForEach(menuItems) { menuItem in
                MenuItemView(menuItem: menuItem)
            }
        }
        .padding(.horizontal)
    }

}

struct MenuItemView: View {

    var menuItem: MenuItem

    var body: some View {
        NavigationLink {
            MenuItemDetailsView(menuItem: menuItem)
        } label: {
            VStack {
                Rectangle()
                    .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.black)
                Text(menuItem.title)
                    .font(.footnote)
                    .lineLimit(1)
            }
        }
    }
}

#Preview {
    MenuItemsView()
}
