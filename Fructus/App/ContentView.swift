//
//  ContentView.swift
//  Fructus
//
//  Created by Antonio Ajewole on 05/06/2023.
//

import SwiftUI

struct ContentView: View {
    let fruit = fruitData

    var body: some View {
        NavigationView  {
            List {
                ForEach(fruit.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("Fruits")
        } //: Navigation
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
