//
//  FructusApp.swift
//  Fructus
//
//  Created by Antonio Ajewole on 05/06/2023.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnboarding") private var isOnboarding: Bool = true

    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
