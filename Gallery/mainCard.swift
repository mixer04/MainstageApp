//
//  TripCard.swift
//  mainstageapp
//
//  Created by Borys Bednarski on 17/12/2023.
//

import SwiftUI

struct mainCard: Identifiable, Hashable {
    var id: UUID = .init()
    var title: String
    var subTitle: String
    var image: String
}

var mainCards: [mainCard] = [
    .init(title: "Borys", subTitle: "Bass", image: "borys"),
    .init(title: "Olek", subTitle: "Solo Guitar", image: "olek"),
    .init(title: "Oliwier", subTitle: "Rythm Guitar, Vocals", image: "oliwier"),
    .init(title: "Patryk", subTitle: "Drums", image: "patryk")
]
