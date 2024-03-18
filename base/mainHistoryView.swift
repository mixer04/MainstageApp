//
//  mainHistoryView.swift
//  mainstageapp
//
//  Created by Borys Bednarski on 10/12/2023.
//

import SwiftUI

struct mainHistoryView: View
{
    var body: some View
    {
        NavigationView
        {
            ZStack
            {
                Image("background7")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .scaledToFill()
                    .offset(y: -40)
                VStack
                {
                    ScrollView
                    {
                        VStack
                        {
                            Image("photo1")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .scaledToFit()
                                .cornerRadius(15)
                            VStack()
                            {
                                Text("In the echoes of March 2021, the seeds of what would become the powerhouse rock band, MAINSTAGE, were sown by the hands of four ambitious musicians. Oliwier Buldak, wielding the rhythm guitar and lending his vocals, joined forces with the rhythmic heartbeat of the ensemble, Robert Kochowski on drums. The dream to soar to the pinnacle of the music world burned brightly within them from the very outset.")
                                    .multilineTextAlignment(.center)
                                    .layoutPriority(100)
                                    //.padding(.horizontal, 35)
                                    .padding(.top, 20)

                            }
                        }
                        .padding(.top, 20)
                        
                        VStack
                        {
                            Image("photo2")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .scaledToFit()
                                .frame(width: .infinity)
                                .cornerRadius(15)
                                //.padding(.horizontal, 25)
                            VStack()
                            {
                                Text("With the addition of the virtuosic Aleksander Kardasz on lead guitar and the rhythmic anchor, Borys Bednarski on bass guitar, MAINSTAGE solidified into a formidable quartet. As they seamlessly melded their diverse musical origins, the result was a symphony of styles that breathed life into their compositions. Just one year after the birth of the band, MAINSTAGE embarked on a monumental journey—the creation of their debut album, 'Phoenix.' The culmination of countless hours of dedication and creative synergy, 'Phoenix' emerged as a sonic testament to MAINSTAGE's unwavering commitment to their craft. Released on August 30th, 2022, the album marked a triumphant chapter in their musical odyssey.")
                                    .multilineTextAlignment(.center)
                                    .layoutPriority(100)
                                    //.padding(.horizontal, 35)
                                    .padding(.top, 20)
                            }
                        }
                        .padding(.top, 20)
                        
                        VStack
                        {
                            Image("photo3")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .scaledToFit()
                                .frame(width: .infinity)
                                .cornerRadius(15)
                                //.padding(.horizontal, 25)
                            VStack()
                            {
                                Text("The songs within 'Phoenix' are a testament to the eclectic influences that each member brings to the table. The fusion of styles paints a vivid tapestry, where rock, rhythm, and melody converge in a harmonious explosion of sound. MAINSTAGE's music is more than a genre; it's a sonic voyage that transcends boundaries, inviting listeners to join them on a thrilling adventure through diverse musical landscapes. As MAINSTAGE continues to carve its path through the world of rock, the saga unfolds, promising new chapters of innovation, passion, and electrifying performances. Stay tuned, for the story of MAINSTAGE is one that reverberates with the essence of rock 'n' roll itself—a relentless pursuit of musical greatness. 🤘🎶")
                                    .multilineTextAlignment(.center)
                                    .layoutPriority(100)
                                    .padding(.horizontal, 35)
                                    .padding(.top, 20)
                            }
                        }
                        .padding(.top, 20)
                    }
                    .scrollIndicators(.hidden)
                    .frame(idealWidth: .infinity, idealHeight: .infinity)
                    .padding(.horizontal, 45)
                    .background(.ultraThickMaterial)
                    .navigationBarTitle(Text("MainHistory"), displayMode: .automatic)
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}




#Preview {
    mainHistoryView()
        .preferredColorScheme(.dark)
}
