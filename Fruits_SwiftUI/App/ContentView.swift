//
//  ContentView.swift
//  Fruits_SwiftUI
//
//  Created by Venkata Ajay Sai (Paras) on 11/08/22.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    var fruits: [Fruit]
    @State private var isShowingSettings: Bool = false

    var body: some View {
        NavigationView{
            List.init(fruits.shuffled()) { fruit in
                NavigationLink.init(destination: FruitDetailView(fruit: fruit)) {
                    FruitRowView.init(fruit: fruit)
                        .padding(.vertical, 10)
                }
            }
            .navigationTitle("Fruits")
            .toolbar {
                ToolbarItem.init(placement: .navigationBarTrailing) {
                    Button.init {
                        isShowingSettings = true
                    } label: {
                        Image(systemName: "slider.horizontal.3")
                    }
                    .sheet(isPresented: $isShowingSettings) {
                        SettingsView()
                    }
                }
            }
        }//: NAVIGATION
        .navigationViewStyle(.stack)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
