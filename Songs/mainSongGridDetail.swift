//
//  mainSongGridDetail.swift
//  mainstageapp
//
//  Created by Borys Bednarski on 17/12/2023.
//

import SwiftUI

struct mainSongGridDetail: View {
    var gridview: Song
    var body: some View {
        VStack {
            Image(gridview.cover)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 90, height: 90)
                .shadow(radius: 10)
                //.foregroundStyle(AngularGradient(gradient: Gradient(colors: [.red, .purple, .pink , .white, .red]), center: .center))
            Text(gridview.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.8)
                .shadow(radius: 0.4)
        }
        
    }
}

extension Color
{
    static func random() -> Color 
    {
        return Color(red: Double.random(in: 0...1), green: 0, blue: Double.random(in: 0...1))
    }
}
#Preview {
    mainSongGridDetail(gridview: MockData.sampleSong)
}
