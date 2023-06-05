//
//  OnboardingView.swift
//  Fructus
//
//  Created by Antonio Ajewole on 05/06/2023.
//

import SwiftUI

struct OnboardingView: View {
    let fruits = fruitData

    var body: some View {
        TabView {
            ForEach(fruits){ item in
                FruitCardView(fruit: item)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
