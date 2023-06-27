//
//  ContentView.swift
//  DailyNews
//
//  Created by Smil on 23/06/23.
//

import SwiftUI
import FirebaseCore

struct ContentView: View {
    @ObservedObject var newsMethod = NewsMethods()
    var body: some View {
        var generalNews:[News] = []
        NavigationStack{
            Text("Daily News").font(.title).bold()
            VStack(alignment: .center){
                ScrollView(.horizontal,showsIndicators: false){
                    CategoryNewsListView(categoryList: previewData.categories)
                }.frame(height: 100)
                if(newsMethod.articles.isEmpty){
                    VStack{
                        ProgressView()
                        Text("Fetching News")
                    }
                }
                else{
                    NewsCard(news: newsMethod.articles)
                }
               
            }
            
        }
            .onAppear {
                if(generalNews.isEmpty){
                    newsMethod.fetchNews();
                    generalNews = newsMethod.articles;
                }
            }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            ContentView()
        }
    }
}
