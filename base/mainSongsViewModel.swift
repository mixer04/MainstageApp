//
//  mainSongsViewModel.swift
//  mainstageapp
//
//  Created by Borys Bednarski on 18/12/2023.
//

import SwiftUI

final class mainSongsViewModel: ObservableObject
{
    var selectedSong: Song?
    {
        didSet
        {
            isShowingDetailView = true
        }
    }
    
    
    @Published var isShowingDetailView = false
}
