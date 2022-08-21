//
//  SettingsRow.swift
//  Fruits_SwiftUI
//
//  Created by Venkata Ajay Sai (Paras) on 20/08/22.
//

import SwiftUI

struct SettingsRowView: View {
    // MARK: - PROPERTIES
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack{
                Text(name).foregroundColor(.gray)
                Spacer()
                if content != nil {
                    Text(content!)
                }
                else if linkLabel != nil && linkDestination != nil{
                    Link.init(destination: URL.init(string: "Https://\(linkDestination!)")!) {
                        Text(linkLabel!)
                    }
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                }
                else {
                    /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
                }
            }//: HSTACK
        }//: VSTACK
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(name: "Developer", content: "John / Jane")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
