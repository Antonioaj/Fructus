//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Antonio Ajewole on 06/06/2023.
//

import SwiftUI

struct SettingsRowView: View {
    let titleLabel: String
    var subTitleLabel: String? = nil
    var link: String? = nil
    var linkTitle: String? = nil

    var body: some View {
        VStack {
            Divider().padding(.vertical, 5)
            HStack {
                Text(titleLabel)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                Spacer()
                if let link = link, let linkTitle = linkTitle {
                    Link(destination: URL(string: link)!) {
                        Text(linkTitle)
                        Image(systemName: "arrow.up.right.square")
                            .foregroundColor(.red)
                    }
                } else if let subTitleLabel = subTitleLabel {
                    Text(subTitleLabel)
                        .font(.callout)
                    .bold()
                }else {
                    /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
                }
            }
        }
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(titleLabel: /*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/, subTitleLabel: "John / Jane")
            .previewLayout(.fixed(width: 300, height: 60))
            .padding()
        
        SettingsRowView(titleLabel: /*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/, link:"https://www.google.com", linkTitle:"Antonio's site")
            .previewLayout(.fixed(width: 300, height: 60))
            .padding()
    }
}
