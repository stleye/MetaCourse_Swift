//
//  ContentView.swift
//  CreateASet
//
//  Created by Sebastian Tleye on 23/01/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Button(action: {
                Model().createSets()
            }, label: {
                Text("Run Code")
            })
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
