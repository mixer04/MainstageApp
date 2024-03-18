//
//  mainArticleSheet.swift
//  mainstageapp
//
//  Created by Borys Bednarski on 18/12/2023.
//

import SwiftUI

struct mainArticleSheet: View {
    @Binding var isShowingDetailView: Bool
    var sheetinfo: Article
    var body: some View {
        ZStack
        {
            Image("background2")
                .resizable()
                .aspectRatio(contentMode: .fit)
            ScrollView
            {
                GeometryReader
                { geometry in
                    VStack
                    {
                        if geometry.frame(in: .global).minY <= 0
                        {
                            ZStack{
                                Image(sheetinfo.image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .scaledToFill()
                                    .frame(width: geometry.size.width, height: geometry.size.height)
                                    .offset(y: geometry.frame(in: .global).minY/9)
                                    .clipped()
                                HStack
                                {
                                    VStack {
                                        Button
                                        {
                                            isShowingDetailView = false
                                        } label: {
                                            Image(systemName: "arrow.backward.circle.fill")
                                                .foregroundColor(.primary)
                                                .imageScale(.large)
                                                .frame(width: 40, height: 40)
                                        }
                                        Spacer()
                                        .padding()
                                        
                                    }
                                    .offset(y: 50)
                                    Spacer()
                                }
                                .offset(x: 10)
                                }
                            }
                        else
                        {
                            ZStack{
                                Image(sheetinfo.image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .scaledToFill()
                                    .frame(width: geometry.size.width, height: geometry.size.height + geometry.frame(in: .global).minY)
                                    .offset(y: -geometry.frame(in: .global).minY)
                                HStack
                                {
                                    VStack {
                                        Button
                                        {
                                            isShowingDetailView = false
                                        } label: {
                                            Image(systemName: "arrow.backward.circle.fill")
                                                .foregroundColor(.primary)
                                                .imageScale(.large)
                                                .frame(width: 40, height: 40)
                                                .clipped()
                                        }
                                        Spacer()
                                        .padding()
                                        
                                    }
                                    .offset(y: 50)
                                    Spacer()
                                }
                                .offset(x: 10)
                                }
                        }
                    }
                }
                .frame(height: 300)
                
                VStack(alignment: .leading, spacing: 10)
                {
                    HStack
                    {
                        VStack(alignment: .leading)
                        {
                            Text("MainNews")
                                .font(.headline)
                                .foregroundStyle(.secondary)
                            Text(sheetinfo.title)
                                .font(.title)
                                .fontWeight(.black)
                                .foregroundStyle(.primary)
                                .lineLimit(3)
                            Text(sheetinfo.date.uppercased())
                                .font(.caption)
                                .foregroundStyle(.secondary)
                        }
                        .layoutPriority(100)
                        Spacer()
                    }
                    .padding()
                }
                VStack(alignment: .leading)
                {
                    Text(sheetinfo.content)
                }
                .padding(.horizontal)
                .padding(.top, 16)
            }
            .edgesIgnoringSafeArea(.all)
            .background(.ultraThickMaterial)
            .gesture(DragGesture(minimumDistance: 3.0, coordinateSpace: .local)
                .onEnded { value in print(value.translation)
                    switch(value.translation.width, value.translation.height) {
                    case (150..., -30...30): isShowingDetailView = false
                    default: print("Lower value")
                    }})
        }
    }
}
#Preview {
    mainArticleSheet(isShowingDetailView: .constant(false), sheetinfo: articledata.articles[0])
        .preferredColorScheme(.dark)
}
