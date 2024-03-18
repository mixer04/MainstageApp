//
//  mainArticleViewModel.swift
//  mainstageapp
//
//  Created by Borys Bednarski on 18/12/2023.
//

import SwiftUI

final class mainArticleViewModel: ObservableObject
{
    var selectedArticle: Article?
    {
        didSet
        {
            isShowingDetailView = true
        }
    }
    
    
    @Published var isShowingDetailView = false
}
