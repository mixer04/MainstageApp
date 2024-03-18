//
//  ContentView.swift
//  mainstageapp
//
//  Created by Borys Bednarski on 10/12/2023.
//

import SwiftUI

struct mainHomeView: View
{
    @StateObject var viewModel = mainArticleViewModel()
    @State private var scrollViewID = UUID()
    var body: some View
    {
        
        NavigationView
        {
            ZStack
            {
                Image("background2")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .scaledToFill()
                VStack
                {
                    Spacer()
                    Image("logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .offset(y: 20)
                    
                    ScrollView
                    {
                        LazyVStack
                        {
                            ForEach(articledata.articles) { article in
                                mainArticleDetails(detailarticle: article)
                                    .onTapGesture {
                                        viewModel.selectedArticle = article
                                    }}
                            .padding(.bottom, 25)
                        }
                    }
                }
                .id(self.scrollViewID)
                .fullScreenCover(isPresented: $viewModel.isShowingDetailView) { mainArticleSheet(isShowingDetailView: $viewModel.isShowingDetailView, sheetinfo: viewModel.selectedArticle ?? articledata.articles[0])}
                .scrollIndicators(.hidden)
                .padding(.horizontal, 15)
                .padding(.top, -30)
                .padding(.bottom, 0)
                .background(.ultraThinMaterial)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    mainHomeView()
        .preferredColorScheme(.dark)
}
