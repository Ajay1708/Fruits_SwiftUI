//
//  Fruits_SwiftUIApp.swift
//  Fruits_SwiftUI
//
//  Created by Venkata Ajay Sai (Paras) on 11/08/22.
//

import SwiftUI

@main
struct Fruits_SwiftUIApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    var body: some Scene {
        WindowGroup {
            if isOnboarding{
            OnBoardingView(fruitsData: fruitsData)
            }
            else{
                ContentView(fruits: fruitsData)
            }
        }
    }
}
