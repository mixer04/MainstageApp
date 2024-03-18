//
//  mainSingleArticle.swift
//  mainstageapp
//
//  Created by Borys Bednarski on 11/12/2023.
//

import SwiftUI

struct mainSingleArticle: View
{
    var imageName: String
    var articleName: String
    var monthYear: String
    var body: some View
    {
        VStack
        {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
        HStack
        {
            VStack(alignment: .leading)
            {
                Text("MainNews")
                    .font(.headline)
                    .foregroundStyle(.secondary)
                Text(articleName)
                    .font(.title)
                    .fontWeight(.black)
                    .foregroundStyle(.primary)
                    .lineLimit(3)
                Text(monthYear.uppercased())
                    .font(.caption)
                    .foregroundStyle(.secondary)
                
            }
            .layoutPriority(100)
            Spacer()
            }
            .padding()
        }
    
        .background(.ultraThinMaterial)
        .cornerRadius(10)
        .overlay(RoundedRectangle(cornerRadius: 10) .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1), lineWidth: 1))
        .padding([.top, .horizontal])
    }
}

#Preview {
    mainSingleArticle(imageName: "MainHome", articleName: "Welcome to our world!", monthYear: "December 2023")
}
