//
//  mainSongsView.swift
//  mainstageapp
//
//  Created by Borys Bednarski on 10/12/2023.
//

import SwiftUI


struct mainSongsView: View {
    
    @StateObject var viewModel = mainSongsViewModel()
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
    ]
    var body: some View {
        NavigationView
        {
            ZStack
            {
                Image("background5")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .scaledToFill()
                    .offset(y: -40)
                ScrollView
                {
                    LazyVGrid(columns: columns)
                    {
                        ForEach(MockData.songs) { song in
                            mainSongGridDetail(gridview: song)
                                .onTapGesture {
                                    viewModel.selectedSong = song
                                }
                        }
                        .padding(.bottom, 50)
                    }
                }
                .navigationBarTitle(Text("MainSongs"), displayMode: .automatic)
                .fullScreenCover(isPresented: $viewModel.isShowingDetailView) {
                    mainSongDetailView(SongDetails: viewModel.selectedSong ?? MockData.sampleSong, isShowingDetailView: $viewModel.isShowingDetailView)
                        .background(.ultraThinMaterial)
                }
                .navigationBarTitleDisplayMode(.inline)
                .padding(.horizontal, 20)
                .padding(.top, 10)
                .background(.ultraThinMaterial)
            }
            
        }
    }
}


#Preview {
    mainSongsView()
        .preferredColorScheme(.dark)
}
