//
//  SettingsView.swift
//  Fructus
//
//  Created by Antonio Ajewole on 06/06/2023.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") private var isOnboarding: Bool = false
    @State private var isShowingActionSheet = false

    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    GroupBox {
                        SettingsSectionTitleView(title: "FRUCTUS", image: "info.circle")
                        Divider().padding(.vertical, 5)
                        HStack {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text("Some low-carb diets specifically say to avoid fruit, at least for a certain part of the diet. This is because fruit tends to have a higher carbohydrate content than most vegetables, due to its higher amount of naturally occurring sugars")
                                .font(.footnote)
                        }
                    }
                    
                    GroupBox {
                        SettingsSectionTitleView(title: "CUSTOMIZATION", image: "paintbrush")
                        Divider().padding(.vertical, 5)
                        Text("Some low-carb diets specifically say to avoid fruit, at least for a certain part of the diet. This is because fruit tends to have a higher carbohydrate content than most vegetables, due to its higher amount of naturally occurring sugars")
                            .font(.footnote)
                    }
                    
                    GroupBox {
                        SettingsSectionTitleView(title: "APPLICATION", image: "apps.iphone")
                        SettingsRowView(titleLabel: "Developer", subTitleLabel: "John / Jane")
                        SettingsRowView(titleLabel: "Desginer", subTitleLabel: "Antonio Aj")
                        SettingsRowView(titleLabel: "Compatibility", subTitleLabel: "iOS 14")
                        SettingsRowView(titleLabel: "Website", link:"https://www.google.com", linkTitle:"Antonio's site")
                        SettingsRowView(titleLabel: "Twitter", link:"https://twitter.com", linkTitle:"@awesomeness")
                        SettingsRowView(titleLabel: "SwiftUI", subTitleLabel: "2.0")
                        SettingsRowView(titleLabel: "Version", subTitleLabel: "1.1.0")
                    }
                    
                    Button(action: {
                        isShowingActionSheet = true
                    }) {
                        Spacer()
                        Text("RESET")
                        Image(systemName:  "rectangle.portrait.and.arrow.right")
                        Spacer()
                    }
                    .padding()
                    .background(Capsule().strokeBorder(.red, lineWidth: 1))
                    .actionSheet(isPresented: $isShowingActionSheet) {
                        ActionSheet(title: Text("App Reset"),
                                    message: Text("Are you sure you want to reset the app back to onboarding state?"),
                                    buttons: [
                                        .cancel(),
                                        .destructive(Text("Yes")){
                                            isOnboarding = true
                                        }
                                    ]
                        )
                    }
                }
                .padding()
            }
            .navigationBarTitle("Settings")
            .navigationBarItems(trailing: Button(action: {
                presentationMode.wrappedValue.dismiss()
            }) {
                Image(systemName: "xmark")
            })
            .navigationViewStyle(.stack)
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
