//
//  OnBoardingView.swift
//  Fruits_SwiftUI
//
//  Created by Venkata Ajay Sai (Paras) on 12/08/22.
//

import SwiftUI

struct OnBoardingView: View {
    // MARK: - PROPERTIES
    var fruitsData: [Fruit]
    var body: some View {
        
        TabView.init {
            ForEach.init(fruitsData[0...5]) { fruit in
                FruitCardView(fruit: fruit)
            }//: LOOP
        }//: TAB VIEW
        .tabViewStyle(.page)
        .padding(.vertical, 20)
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView(fruitsData: fruitsData)
            .previewDevice("iPhone 11 Pro")
    }
}
