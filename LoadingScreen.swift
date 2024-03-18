//
//  LoadingScreen.swift
//  mainstageapp
//
//  Created by Borys Bednarski on 18/12/2023.
//

import SwiftUI

struct LoadingScreen: View {
    var body: some View {
        Image("logo")
            .resizable()
            .scaledToFit()
            .frame(width: 400)
    }
}

#Preview {
    LoadingScreen()
        .preferredColorScheme(.dark)
}
