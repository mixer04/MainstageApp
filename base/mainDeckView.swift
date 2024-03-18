//
//  maindeckView.swift
//  mainstageapp
//
//  Created by Borys Bednarski on 10/12/2023.
//

import SwiftUI

struct mainDeckView: View
{
    var body: some View
    {
        TabView
        {
            mainHomeView()
                .tabItem
            {
                Image(systemName: "house.fill")
                Text("Home")
            }
            .tag(1)
            mainSongsView()
                .tabItem
            {
                Image(systemName: "music.note.house")
                Text("Songs")
            }
            .tag(2)
            mainGalleryView()
                .tabItem
            {
                Image(systemName: "person.3.fill")
                Text("Members")
            }
            .tag(3)
            mainHistoryView()
                .tabItem
            {
                Image(systemName: "info.circle")
                Text("History")
            }
            .tag(4)
        }
        .accentColor(.white)
        .background(.ultraThinMaterial)
        .preferredColorScheme(.dark)
    }
}

#Preview {
    mainDeckView()
}
