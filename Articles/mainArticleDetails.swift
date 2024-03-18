//
//  mainArticleDetails.swift
//  mainstageapp
//
//  Created by Borys Bednarski on 18/12/2023.
//

import SwiftUI

struct mainArticleDetails: View 
{
    var detailarticle: Article
    var body: some View
    {
        VStack
        {
            Image(detailarticle.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
        
        HStack
        {
            
            VStack(alignment: .leading)
            {
                Text("MainNews")
                    .font(.headline)
                    .foregroundStyle(.secondary)
                Text(detailarticle.title)
                    .font(.title)
                    .fontWeight(.black)
                    .foregroundStyle(.primary)
                    .lineLimit(3)
                Text(detailarticle.date.uppercased())
                    .font(.caption)
                    .foregroundStyle(.secondary)
                
            }
            .layoutPriority(100)
            Spacer()
            }
            .padding()
        }
        .ignoresSafeArea()
        .background(.ultraThinMaterial)
        .cornerRadius(15)
        .overlay(RoundedRectangle(cornerRadius: 10) .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1), lineWidth: 1))
        
        
    }
}

#Preview {
    mainArticleDetails(detailarticle: articledata.articles[0])
}
