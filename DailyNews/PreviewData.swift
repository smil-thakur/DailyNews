//
//  PreviewData.swift
//  DailyNews
//
//  Created by Smil on 23/06/23.
//

import Foundation

class previewData:Identifiable{
    
    static let categories:[CategoryCard] = [CategoryCard(id: 1, name: "Business"),CategoryCard(id: 2, name: "Entertainment"),CategoryCard(id: 3, name: "General"),CategoryCard(id: 4, name: "Health"),CategoryCard(id: 5, name: "Science"),CategoryCard(id: 6, name: "Sports"),CategoryCard(id: 7, name: "Technology")]
    
//    static let news = NewsCardModel(id:1,img: "https://www.apple.com/careers/images/fy22-og-refresh/work_at_apple_OG/desktop.png", description: "However, the above only changes the frame of the container used to render our image, it doesn’t actually resize our image itself (which can still end up being drawn out of bounds). To actually change the size of our image, we instead have to use another AsyncImage initializer which gives us more precise control over how both the image, and its placeholder, should be rendered:", title: "Apple Vision Pro", author: "Smil")
//
//
//
//    static let newses = [NewsCardModel](repeating: news, count: 10)
    
//    var author:String?
//    var title:String
//    var description:String?
//    var url:String
//    var urlToImage:String?
//    var publishedAt:String
//    var content:String?
    
    static let news = News(author: "smil", title: "Apple Vision Pro",description: "However, the above only changes the frame of the container used to render our image, it doesn’t actually resize our image itself (which can still end up being drawn out of bounds). To actually change the size of our image, we instead have to use another AsyncImage initializer which gives us more precise control over how both the image, and its placeholder, should be rendered:", url: "https://www.apple.com/careers/images/fy22-og-refresh/work_at_apple_OG/desktop.png",urlToImage: "https://www.apple.com/careers/images/fy22-og-refresh/work_at_apple_OG/desktop.png", publishedAt: "27/08/23",content: "Vijay Varma reveals Tamannaah Bhatia's most annoying habit - ExclusiveVijay Varma reveals that Tamannaah is obsessive about her workouts and plans her days around her gym sessions")
    
    static let newses = [News](repeating: news, count: 10)
    
}

//"Business","Entertainment","General","Health","Science","Sports","Technology"
