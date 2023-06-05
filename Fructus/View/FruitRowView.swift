//
//  FruitRowView.swift
//  Fructus
//
//  Created by Antonio Ajewole on 05/06/2023.
//

import SwiftUI

struct FruitRowView: View {
    let fruit: Fruit

    var body: some View {
        HStack {
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: .black.opacity(0.3), radius: 3, x: 2, y: 2)
                .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors),
                                           startPoint: .top, endPoint: .bottom))
                .cornerRadius(8)

            VStack(alignment: .leading, spacing: 5) {
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            
        } //: - HSTACK
    }
}

struct FruitRowView_Previews: PreviewProvider {
    static var previews: some View {
        FruitRowView(fruit: fruitData.last!)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
