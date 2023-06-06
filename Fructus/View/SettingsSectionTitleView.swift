//
//  SettingsSectionTitleView.swift
//  Fructus
//
//  Created by Antonio Ajewole on 06/06/2023.
//

import SwiftUI

struct SettingsSectionTitleView: View {
    let title: String
    let image: String
    
    var body: some View {
        HStack {
            Text(title)
            Spacer()
            Image(systemName: image)
        }
        .font(.body.bold())
    }
}

struct SettingsSectionTitleView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsSectionTitleView(title: "FRUCTUS", image: "info.circle")
            .previewLayout(.fixed(width: 300, height: 70))
            .padding()
    }
}
