//
//  Home.swift
//  mainstageapp
//
//  Created by Borys Bednarski on 17/12/2023.
//

import SwiftUI

struct mainGalleryView: View {
    var body: some View {
        ZStack
        {
            Image("background3")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .scaledToFit()
            VStack
            {
                VStack(spacing: 15)
                {
                    
                    Text("MainMembers")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                        .padding(.top, 25)
                    
                    Spacer()
                    
                    GeometryReader(content: { geometry in
                        let size = geometry.size
                        
                        ScrollView(.horizontal)
                        {
                            HStack(spacing: 5)
                            {
                                ForEach(mainCards) { card in
                                    GeometryReader(content: { proxy in
                                        let mainCardSize = proxy.size
                                        let minX = min((proxy.frame(in: .scrollView).minX * 1.4), proxy.size.width * 1.4)
                                        
                                        Image(card.image)
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .offset(x: -minX)
                                            .offset(x: 30)
                                            .frame(width: proxy.size.width * 2.5)
                                            .frame(width: mainCardSize.width, height: mainCardSize.height)
                                            .overlay {
                                                OverlayView(card)
                                            }
                                            .clipShape(.rect(cornerRadius: 15))
                                            .shadow(color: .black.opacity(0.1), radius: 6, x: 0, y: 10)
                                    })
                                    .frame(width: size.width - 60, height: size.height - 0)
                                    .scrollTransition(.interactive, axis: .horizontal)
                                    {
                                        view, phase in view
                                            .scaleEffect(phase.isIdentity ? 1 : 0.94)
                                    }
                                }
                            }
                            .padding(.horizontal, 30)
                            .scrollTargetLayout()
                            .frame(height: size.height, alignment: .top)
                        }
                        .offset(y: -80)
                        .scrollTargetBehavior(.viewAligned)
                        //.scrollIndicators(.hidden)
                    })
                    .frame(height: 500)
                    .padding(.horizontal, -15)
                    .padding(.top, 10)
                    
                }
                .padding(15)
            }
            .scrollIndicators(.hidden)
            .background(.ultraThinMaterial)
        }
    }
        
        @ViewBuilder
        func OverlayView(_ card: mainCard) -> some View
        {
            ZStack(alignment: .bottomLeading, content: {
                LinearGradient(colors: [
                    .clear,
                    .clear,
                    .clear,
                    .clear,
                    .clear,
                    .black.opacity(0.1),
                    .black.opacity(0.5),
                    .black
                ], startPoint: .top, endPoint: .bottom)
                
                VStack(alignment: .leading, spacing: 4, content: {
                    Text(card.title)
                        .font(.title2)
                        .fontWeight(.black)
                        .foregroundStyle(.white)
                    
                    Text(card.subTitle)
                        .font(.callout)
                        .foregroundStyle(.white.opacity(0.8))
                })
                .padding(20)
            })
        }
    }
#Preview {
    mainGalleryView()
        .preferredColorScheme(.dark)
}
