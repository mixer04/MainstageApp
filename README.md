# MainstageApp
#### Video Demo:  https://youtu.be/qMSq2s9oHjk
#### Description:

MainstageApp is a source of information about my rock band. I wanted to give our fans a place to visit, so they keep up with the latest news about us. For this project I decided that I will learn whole new language, which is Swift. I really like it and I will keep learning Swift along with Apple’s frameworks and integration with API.


## mainHomeView.swift
Let’s break down this page: it contains 3 different sections: mainDeckView for navigation in the app, mainArticleDetails for article blocks and elements of the main page such as logo and background.

## mainDeckView.swift
The navigation from the mainDeckView file is simple and effective. I have used thin material background to get glass-like effect. This background will be used several times across the app.

For the images across the app, I have set radius to „15”, to give our users nice, iOS style.
Article blocks are connected to the Articles file to update it more effectively. In the future, I would like to implement post adding through the API. Articles are now adding automatically when the file with description called „Articles.swift” is updated. When user clicks on the article, new screen shows up with the whole article to read. User can choose article by scrolling page.

## mainSingleArticle 
It's a detailed view of the chosen article. I used there paralax scroll on image and scroll view to give a better user experience. For ViewModel of detailed article I used isShowingDetailView model to simply open and close the sheet.

## mainSongsView.swift
It contains a grid view of all songs that our band has released. Each of the icons have linked album cover to it. This element is linked to the Songs.swift file with all the necessary data for each song, such as description, title, cover and URL.
When clicked on particular song, the sheet of a detailed view shows up. I have linked detailed view and mainSongsView, so when user clicks on one song, this song’s data is passed to the next view. On the bottom of the page there is a red button, which redirects user to the page, with all streaming links for that song. This module is using SafariKit framework.

##mainGalleryView.swift
This view shows each band member’s picture in very pretty and user-friendly way. To go to the next picture, user have to swipe the pictures on a carousel.

## mainHistoryView.swift
In this view, there is our band’s whole history. We are proud of it, and we want it to be in our app. In the ScrollView, there are some VStacks which are keeping whole content in place, nicely formatted.


## More ideas
I have a couple of ideas to implement in the app in the future, such as Firebase API with remote push notifications and remote updates or Live Stream access, to watch our live performances straight from our app.
