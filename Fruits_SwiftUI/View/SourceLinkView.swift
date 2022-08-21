//
//  SourceLinkView.swift
//  Fruits_SwiftUI
//
//  Created by Venkata Ajay Sai (Paras) on 19/08/22.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox.init {
            HStack(){
                Text("Content source")
                Spacer()
                Link("Wikipedia", destination: URL.init(string: "https://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
