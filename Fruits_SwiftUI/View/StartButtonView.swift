//
//  StartButtonView.swift
//  Fruits_SwiftUI
//
//  Created by Venkata Ajay Sai (Paras) on 12/08/22.
//

import SwiftUI

struct StartButtonView: View {
    // MARK: - PROPERTIES
    @AppStorage("isOnboarding") var isOnboarding:Bool?

    // MARK: - BODY
    var body: some View {
        Button {
            isOnboarding = false
        } label: {
            HStack(spacing: 8) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }//: HSTACK
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
        }//: BUTTON
        .accentColor(.white)
        .background(
            Capsule.init().strokeBorder(.white,lineWidth: 1.24)
        )

    }
}
// MARK: - PREVIEW
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
