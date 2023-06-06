//
//  ContentView.swift
//  Fructus
//
//  Created by Antonio Ajewole on 05/06/2023.
//

import SwiftUI

struct FruitListView: View {
    let fruit = fruitData

    @State private var isSheetShowing = false

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
            .navigationBarItems(trailing: Button(action: {
                isSheetShowing = true
            }) {
                Image(systemName: "slider.horizontal.3")
            })
            .sheet(isPresented: $isSheetShowing) {
                SettingsView()
            }
        } //: Navigation
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FruitListView()
    }
}
