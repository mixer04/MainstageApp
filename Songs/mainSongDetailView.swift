//
//  mainSongDetailView.swift
//  mainstageapp
//
//  Created by Borys Bednarski on 18/12/2023.
//

import SwiftUI

struct mainSongDetailView: View {
    var SongDetails: Song
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    var body: some View {
        ZStack
        {
            
        }
        ScrollView{
            HStack {
                Spacer()
                VStack {
                    Button
                    {
                        isShowingDetailView = false
                    } label: {
                        Image(systemName: "xmark")
                            .foregroundColor(.primary)
                            .imageScale(.large)
                            .frame(width: 40, height: 40)
                    }
                }
            }
            .padding()
            Spacer()
            VStack
            {
                Spacer()
                mainSongGridDetail(gridview: SongDetails)
                Text(SongDetails.description)
                    .font(.body)
                    .padding()
                Spacer()
                Button
                {
                    isShowingSafariView = true
                } label: {
                    Text("🎵 Listen to the song")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .frame(width: 300, height: 50)
                        .background(Gradient(colors: [ .red]))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.top, 15)
            }
            .sheet(isPresented: $isShowingSafariView, content: {
                SafariView(url: URL(string: SongDetails.url) ?? URL(string: "www.apple.com")!)
            })
        }
    }
}

#Preview {
    mainSongDetailView(SongDetails: MockData.sampleSong, isShowingDetailView: .constant(false))
}
