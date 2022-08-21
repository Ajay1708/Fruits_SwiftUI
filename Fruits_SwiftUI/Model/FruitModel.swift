//
//  FruitModel.swift
//  Fruits_SwiftUI
//
//  Created by Venkata Ajay Sai (Paras) on 12/08/22.
//

import SwiftUI

// MARK: - FRUITS DATA MODEL
struct Fruit: Identifiable{
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description : String
    var nutrition: [String]
}
