//
//  FruitDetailView.swift
//  Fruits_SwiftUI
//
//  Created by Venkata Ajay Sai (Paras) on 16/08/22.
//

import SwiftUI

struct FruitDetailView: View {
    
    // MARK:- PROPERTIES
    var fruit: Fruit
    // MARK:- BODY
    var body: some View {
        NavigationView{
            ScrollView.init(.vertical, showsIndicators: false){
                VStack {
                    // HEADER
                    FruitHeaderView(fruit: fruit)
                    
                    VStack.init(alignment: .leading, spacing: 20){
                        // TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        // HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        // NUTRIENTS
                        FruitNutrientsView(fruit: fruit)
                        
                        // SUBHEADLINE
                        Text("Learn more about \(fruit.title.uppercased())")
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        // DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        //LINK
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                        
                    }//: VSTACK
                    .padding(.horizontal, 20)
                .frame(maxWidth: 640, alignment: .center)
                }//: VSTACK
                .navigationBarHidden(true)
            }//: SCROLL
            .edgesIgnoringSafeArea(.top)
        }//: NAVIGATION
        .navigationViewStyle(.stack)
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
    }
}
