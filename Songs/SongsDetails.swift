//
//  SongsDetails.swift
//  mainstageapp
//
//  Created by Borys Bednarski on 17/12/2023.
//

import Foundation

struct Song: Hashable, Identifiable
{
    let id = UUID()
    let name: String
    let description: String
    let url: String
    let cover: String
}

struct MockData
{
    static let sampleSong = Song(name: "Phoenix",
                                 description: "In the heart of a land shrouded in myth and legend, there lived a people who worshiped a magnificent bird of fire, the Phoenix. This extraordinary creature was said to possess the power of rebirth, rising from the ashes of its own destruction to soar once again into the heavens. Legends spoke of the Phoenix's cyclical existence, a testament to the enduring spirit of life. When its time came, the Phoenix would set itself ablaze, consuming itself in a fiery embrace. From the ashes of its pyre, a new Phoenix would emerge, its plumage more vibrant, its wings stronger, its spirit renewed. One day, a great darkness descended upon the land, casting a pall of despair over the people. Their crops failed, their herds dwindled, and their once vibrant villages were reduced to desolate wastelands. Hope seemed to fade, and the people's spirits sank as low as the winter sky. \nAs the darkness deepened, a single ember of hope flickered within the people's hearts. They remembered the Phoenix, the symbol of resilience and rebirth. They gathered in their crumbling temples and prayed for the Phoenix's return, their voices echoing through the desolate landscape. And then, as if in answer to their prayers, a flicker of light appeared on the horizon. A magnificent bird, its plumage ablaze with fire, soared into view, its wings casting a radiant glow upon the land. It was the Phoenix, returning from the depths of darkness to restore hope to the hearts of its people. The Phoenix descended upon the ravaged land, its presence filling the people with renewed strength and courage. The bird's fiery breath ignited the dormant crops, reviving the withered fields. Its wings stirred the stagnant winds, bringing life-giving rain to the parched earth.  With the Phoenix's guidance, the people worked together to rebuild their homes and restore their villages. The bird's presence was a constant source of inspiration, reminding them of their resilience and their indomitable spirit. As the Phoenix prepared to depart, it soared above the land, its fiery plumage illuminating the sky. The people watched in awe as the bird ignited its own pyre, its form consumed by the flames. Then, from the ashes of the Phoenix, a new life emerged. A vibrant, youthful creature, its wings stronger and its plumage more radiant than ever before, took flight. The Phoenix had fulfilled its purpose, giving rise to a new generation, ready to carry the torch of hope and resilience into the future.",
                                 url: "https://songwhip.com/mainstage/phoenix2022", 
                                 cover: "cover_phoenix")

    static let songs = [
    Song(name: "Life Goes On",
         description: "Life is a journey, full of surprises, some good, some bad. But no matter what happens, we must keep moving forward. MAINSTAGE's song 'Life Goes On' reminds us that even in the darkest of times, there is always hope. The song starts with a slow, melancholic melody, setting the stage for a powerful message. The lyrics are simple yet profound, capturing the essence of resilience and hope. As the song progresses, the tempo picks up, reflecting the strength and determination we must have to face life's challenges. The chorus is the heart of the song, with its infectious beat and uplifting lyrics. 'Life goes on,' we repeat, reminding ourselves that even when we stumble, we can always get up and keep going. The song ends with a message of hope and perseverance, leaving us with a sense of strength and determination to face whatever life throws our way. \n\n'Life Goes On' is more than just a song; it's a mantra, a reminder that no matter what happens, we will never give up. It's a song for anyone who has ever felt lost or alone, a reminder that we are not alone in this journey called life. So, the next time you're feeling down, put on 'Life Goes On' and let the music lift you up. Let the lyrics remind you of your strength and resilience. And most importantly, remember that life goes on, and so will you.",
         url: "https://songwhip.com/mainstage/life-goes-on",
         cover: "cover_phoenix"),
    
    Song(name: "Grown Man",
         description: "'Grown Man' by Mainstage is a banger that dropped in 2022 and immediately got heads bobbing and feet tapping. The song's lyrics are all about being a confident, self-assured dude who's not afraid to be himself. The message of self-love and empowerment resonated with a lot of folks, and it helped put Mainstage on the map in the hard-rock music scene. The lyrics are inspired by the singer's own journey of growing up and becoming a man. \n\nThe dude's been through some tough stuff, but he's always come out stronger. He's proud of where he's at, and he wants to inspire others to follow their own path, no matter what life throws their way. The lyrics also emphasize the importance of taking risks and believing in yourself. The singer's never been afraid to step outside his comfort zone, and he's always been willing to put himself out there. This attitude has helped him achieve some dope things in life, and it's also inspired others to believe in their own potential. \n\n'Grown Man' is an anthem for anyone who's feeling lost or unsure about their place in the world. The song's message of self-empowerment is timeless, and it'll keep inspiring listeners for years to come.",
         url: "https://songwhip.com/mainstage/grown-man",
         cover: "cover_phoenix"),
    
    Song(name: "Forever Young",
         description: "'Forever Young' tells the story of a neighborhood in the heart of a bustling city, where the dreams of youth collide with the harshness of life's challenges. The setting is the Café on West 3rd Street, a place that becomes a microcosm of the struggles faced by its patrons. \n\nHeavy rings adorn the fingers of those seeking solace in cigarettes, an escape that momentarily distracts from the help they desperately need but cannot attain. The mother, her hands weathered and worn, serves dirt—a metaphor for the unfulfilled promises and dreams that have turned to dust. The father, facing the unrelenting pressure of an unforgiving world, begs for change on the unfamiliar streets of Morning Broadway. The cracked veins filled with drugs reveal the harsh reality of addiction, symbolizing the escapism sought by those grappling with the challenges of life. \n\nThe desire to be 'Forever Young' emerges as a recurring refrain, expressing the universal longing for a time when life was simpler and the weight of the world had not yet settled on weary shoulders. The lyrics convey a sense of nostalgia for the carefree days of youth, a time when the streets were unstrange and Broadway was not marred by the struggles witnessed today. The story takes a personal turn as the lyrics delve into the domestic sphere. \n\nThe wife, burdened by the passage of time, finds herself frozen in the gaze of onlookers when her knees ache from the daily grind. The mention of debts underscores the economic challenges faced by the characters, highlighting the sacrifice of personal freedom for the sake of financial stability. The beats behind the door serve as a metaphor for the unseen struggles that unfold in private, hinting at a fear of the future and the haunting memories of a cream-of-past existence. Despite the hardships, the chorus remains an anthem of yearning for a perpetual state of youth—a desire to be forever untarnished by the trials and tribulations of life. \n\n 'Forever Young' becomes a reflection on the human condition, offering a glimpse into the lives of those navigating the complexities of urban existence. The song captures the essence of longing, resilience, and the enduring quest for a timeless escape from the hardships of the world.",
         url: "https://songwhip.com/mainstage/forever-young",
         cover: "cover_phoenix"),
    
    Song(name: "I Will",
         description: "Penned by the soulful voices of MAINSTAGE, this anthem of unyielding determination has captivated listeners across generations, offering a beacon of hope in the face of adversity. Its melody, as strong as the human spirit itself, mirrors the indomitable will to succeed. With an uplifting rhythm that echoes the heartbeat of perseverance and lyrics that paint vivid pictures of overcoming setbacks, 'I Will' takes shape. Its infectious melody and heartfelt vocals resonate deeply with listeners, who find solace in its message of hope and determination. The song's message of resilience extends beyond personal struggles; it encompasses the collective human spirit's ability to overcome obstacles and rise above challenges. It speaks of finding strength in unity, of supporting one another in times of need, and of never giving up on one's dreams, no matter how distant they may seem. 'I Will' became an instant anthem, captivating audiences worldwide with its message of unwavering determination. Its timeless message resonated across generations, transcending cultural and linguistic barriers. It served as a reminder that even in the darkest of times, there is always a flicker of hope, and that with unwavering belief in ourselves, we can overcome any challenge and achieve our goals.",
         url: "https://songwhip.com/mainstage/i-will",
         cover: "cover_phoenix"),
    
    Song(name: "My Turn",
         description: "In the realm of self-discovery and personal growth, where individuals embark on journeys of self-actualization, a song emerged, echoing the transformative power of taking charge of one's destiny. Its name: 'My Turn'. This anthem of empowerment, penned by the soulful voices of MAINSTAGE, resonated with listeners across generations, offering a rallying call to embrace one's individuality and pursue one's dreams. Its melody, as vibrant as the colors of a kaleidoscope, mirrored the limitless possibilities that await those who dare to step into their power. \n\nThe song's origins can be traced back to a moment of profound introspection, where MAINSTAGE's songwriters paused to contemplate the transformative power of personal agency. They envisioned a song that would capture the essence of having 'my turn', the moment where one takes control of their life's narrative, shaping their destiny with unwavering confidence. With an uplifting rhythm that echoed the heartbeat of determination and lyrics that painted vivid pictures of self-belief and empowerment, 'My Turn' took shape. Its infectious melody and heartfelt vocals resonated deeply with listeners, who found solace in its message of self-discovery and transformation. The song's message of empowerment extended beyond personal struggles; it encompassed the collective human spirit's ability to rise above societal expectations and embrace their true selves. It spoke of breaking free from the shackles of conformity, of pursuing one's passions with unwavering conviction, and of living a life aligned with one's authentic desires. 'My Turn' became an instant anthem, captivating audiences worldwide with its message of self-empowerment. Its timeless message resonated across generations, transcending cultural and linguistic barriers. It served as a reminder that everyone has the power to shape their own destiny, to break free from the limitations imposed by others, and to live a life of authenticity and purpose. \n\nToday, 'My Turn' stands as a testament to the power of music to uplift us, to inspire us, and to remind us that we are not defined by the expectations of others but by the dreams and aspirations we hold within. It's a song that has rightfully earned its place among the timeless classics, a beacon of hope that reminds us that we all have the power to take charge of our lives and create a world that reflects our deepest desires.",
         url: "https://songwhip.com/mainstage/my-turn",
         cover: "cover_phoenix"),
    
    Song(name: "Those Times",
         description: "'Those Times' is a soulful ballad that emerged from the depths of personal reflection and the inevitable passage of time. The protagonist, now standing alone, reflects on the changes that life has wrought upon familiar surroundings and relationships. \n\nThe song opens with the narrator expressing the solitude they now find themselves in. 'And now I stay here all alone, just another day has gone, gone.' The repetition of 'gone' emphasizes the transient nature of time and the inevitability of change. The same old road, once a comforting constant, now feels altered, and the narrator's old friend symbolizes a fading flame—perhaps a friendship that has dimmed or a connection that has weakened. \n\nThe lyrics invite listeners to join the protagonist in a journey of retrospection. 'Looking back, at all those times when it was mine' hints at a period of ownership and familiarity that has slipped away. The act of leaving town, described as a pointless run, emphasizes the futility of some past endeavors. \n\nAs the song progresses, the lyrics delve into the theme of existential emptiness. The world is portrayed as full of void, and the protagonist's mind has become paranoid, perhaps burdened by the uncertainties of the future. The creeping fear inside the veins signifies a struggle—a trial to gain some semblance of control or understanding in the face of life's challenges. \n\nThe chorus serves as a poignant reflection on the loss of former glory. 'Losing crown' becomes a metaphor for the relinquishment of a position of power, authority, or self-esteem. The repetition of this phrase reinforces the theme of accepting the inevitable decline of once-held status. \n\nAs the final chorus repeats the themes of looking back, leaving town, and losing crown, the song captures the essence of a journey through time—a journey marked by solitude, introspection, and the inevitability of change. 'Those Times' becomes a poignant exploration of the complexities of life and the universal experience of grappling with loss and the passage of time.",
         url: "https://songwhip.com/mainstage/those-times",
         cover: "cover_phoenix"),
    
    Song(name: "One of Them",
         description: "The lyrics of this rock ballad by MAINSTAGE tell the story of a person who is struggling with loss and despair. The singer is feeling lost and alone, and they are questioning their own worth. The lyrics are full of dark imagery, such as 'clouds becoming dark' and 'grounds are shaking hard.' This imagery suggests that the singer is feeling overwhelmed by their emotions. The singer also feels betrayed by their friends, who have 'brought [them] fear' instead of comfort. This betrayal has left the singer feeling isolated and alone. The singer's losses have 'drowned [their] hopes,' and they are now feeling hopeless and defeated. The singer sings that they don't want to be 'one of them,' which suggests that they don't want to give up on life. They want to find a way to overcome their pain and despair. The singer's repetition of the phrase 'I don't wanna be one of them' is a powerful statement of their determination to survive. The song ends with the singer singing that they will never 'look back at you.' This suggests that they are moving on from their past and are no longer defined by their losses. The singer is now focused on the future, and they are determined to rebuild their life.",
         url: "https://songwhip.com/mainstage/one-of-them",
         cover: "cover_phoenix"),
    
    Song(name: "Phoenix",
         description: "In the heart of a land shrouded in myth and legend, there lived a people who worshiped a magnificent bird of fire, the Phoenix. This extraordinary creature was said to possess the power of rebirth, rising from the ashes of its own destruction to soar once again into the heavens. Legends spoke of the Phoenix's cyclical existence, a testament to the enduring spirit of life. When its time came, the Phoenix would set itself ablaze, consuming itself in a fiery embrace. From the ashes of its pyre, a new Phoenix would emerge, its plumage more vibrant, its wings stronger, its spirit renewed. One day, a great darkness descended upon the land, casting a pall of despair over the people. Their crops failed, their herds dwindled, and their once vibrant villages were reduced to desolate wastelands. Hope seemed to fade, and the people's spirits sank as low as the winter sky. \n\nAs the darkness deepened, a single ember of hope flickered within the people's hearts. They remembered the Phoenix, the symbol of resilience and rebirth. They gathered in their crumbling temples and prayed for the Phoenix's return, their voices echoing through the desolate landscape. And then, as if in answer to their prayers, a flicker of light appeared on the horizon. A magnificent bird, its plumage ablaze with fire, soared into view, its wings casting a radiant glow upon the land. It was the Phoenix, returning from the depths of darkness to restore hope to the hearts of its people. The Phoenix descended upon the ravaged land, its presence filling the people with renewed strength and courage. The bird's fiery breath ignited the dormant crops, reviving the withered fields. Its wings stirred the stagnant winds, bringing life-giving rain to the parched earth.  With the Phoenix's guidance, the people worked together to rebuild their homes and restore their villages. The bird's presence was a constant source of inspiration, reminding them of their resilience and their indomitable spirit. \n\nAs the Phoenix prepared to depart, it soared above the land, its fiery plumage illuminating the sky. The people watched in awe as the bird ignited its own pyre, its form consumed by the flames. Then, from the ashes of the Phoenix, a new life emerged. A vibrant, youthful creature, its wings stronger and its plumage more radiant than ever before, took flight. The Phoenix had fulfilled its purpose, giving rise to a new generation, ready to carry the torch of hope and resilience into the future.",
         url: "https://songwhip.com/mainstage/phoenix2022",
         cover: "cover_phoenix"),
    
    Song(name: "Godfather",
         description: "From the moment the first chords resonate, 'Godfather' sets the stage for an unforgettable musical experience. The song's infectious rhythm, reminiscent of a beating heart, pulses through the speakers, inviting listeners to let go and immerse themselves in the music. As the soulful vocals of MAINSTAGE take flight, they paint vivid imagery of overcoming challenges and rising above adversity. The lyrics, infused with unwavering faith and determination, resonate with listeners on a deeply personal level. 'Godfather' isn't just about overcoming personal struggles; it's about the power of unity and the collective strength of humanity. It's a call to action, urging us to believe in ourselves and in each other, and to never give up on our dreams, no matter how daunting they may seem. The song's message of resilience extends beyond personal and societal challenges; it encompasses the very essence of the human spirit. It speaks of finding strength in vulnerability, of embracing our imperfections, and of never losing hope, even in the darkest of times.",
         url: "https://songwhip.com/mainstage/godfather-2",
         cover: "cover_godfather")
    ]
}