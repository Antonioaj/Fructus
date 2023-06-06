//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by Antonio Ajewole on 06/06/2023.
//

import SwiftUI

struct FruitNutrientsView: View {
    let fruit: Fruit
    let nutrients = [
        "Energy",
        "Sugar",
        "Fat",
        "Protein",
        "Vitamins",
        "Minerals"
    ]
    
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0..<nutrients.count, id: \.self) { item in
                    Divider()
                        .padding(.vertical, 5)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                         .foregroundColor(fruit.gradientColors.last)
                         .font(.body.bold())

                        Spacer(minLength: 30)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }
    }
}

struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitData.first!)
            .previewLayout(.fixed(width: 300, height: 300))
            .padding()
    }
}
