//
//  CategoryNewsView.swift
//  DailyNews
//
//  Created by Smil on 24/06/23.
//

import SwiftUI

struct CategoryNewsView: View {
    @ObservedObject var newsMethod = NewsMethods()
    var category:String
    var body: some View {
        NavigationStack{
            
            if newsMethod.articles.isEmpty{
                VStack{
                    ProgressView()
                    Text("Fetching News")
                }
                
            }
            else{
                NewsCard(news: newsMethod.articles)
            }
            
        }.navigationTitle(category).navigationBarTitleDisplayMode(.automatic).onAppear{
            newsMethod.fetchCategoryNews(category: category)
            print("category news \(newsMethod.articles)")
        }
    }
}

struct CategoryNewsView_Previews: PreviewProvider {
    static var previews: some View {
        let category = "business"
        NavigationStack{
            CategoryNewsView(category: category)
        }
    }
}
