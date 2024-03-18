//
//  Articles.swift
//  mainstageapp
//
//  Created by Borys Bednarski on 18/12/2023.
//

import Foundation

struct Article: Hashable, Identifiable
{
    let id = UUID()
    let title: String
    let image: String
    let content: String
    let date: String
}

struct articledata
{
    static let articles =  [
        Article(
            title: "Welcome to our app!",
            image: "MainHome",
            content: "Hey Mainstage fans! 🚀 Get ready to elevate your rock experience with our app! 🎶 Dive into the heart-pounding world of MAINSTAGE, where the energy of live performances meets the convenience of your fingertips. \n\n📲 Discover exclusive content, behind-the-scenes glimpses, and stay connected with your favorite rock band like never before. MAINSTAGE brings you closer to the music, the passion, and the adrenaline that define our electrifying performances. \n\nWhether you're a die-hard fan or a newcomer to the Mainstage family, this app is your VIP pass to a front-row seat in the world of rock. From tour updates to exclusive releases, we've got you covered. \n\n🎸Stay tuned, and Rock N' Roll!🤘\n\n\n",
            date: "December 2023"),
        
        Article(
            title: "First chapter",
            image: "SetList",
            content: "When our band was formed, the goal was simple, to be the best, and to give our music to people. That is the most important thing. But as you may assume, first steps weren't the easiests. We had to find valuable people to support us in this first chapter of our history. From the first show, we've gathered big audience in our town. People have been going crazy! ",
            date: "December 2023")
    ]
}
