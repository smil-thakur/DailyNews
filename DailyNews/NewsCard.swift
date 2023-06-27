//
//  NewsCard.swift
//  DailyNews
//
//  Created by Smil on 24/06/23.
//

import SwiftUI

struct NewsCard: View {
    var news:[News];
    var body: some View {
        ScrollView{
            VStack{
                ForEach(Array(news),id: \.title) { news in
                    
                    if let content  = news.content{
                        
                        Link(destination: URL(string: news.url)!) {
                            ZStack{
                                
                                RoundedRectangle(cornerRadius: 20).fill(Color.newCardColor)
                                
                                VStack{
                                    AsyncImage(url: URL(string: news.urlToImage ?? "https://images.pexels.com/photos/2882634/pexels-photo-2882634.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")) { image in
                                        image.resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .padding()
                                            .frame(maxHeight:200)
                                            
                                    } placeholder: {
                                        ProgressView("Loading Image").tint(.white).foregroundColor(.white).padding()
                                    }
                                    
                                    Text(news.title).font(.title).foregroundColor(.white).padding()
                                    Divider()
                                    Text(content).foregroundColor(.white).padding()
                                }
                                

                            }.padding([.leading,.trailing,.bottom]).foregroundColor(.cardColor)
                        }
                        
                               
                                
                    }
                    
                        
                        
                    
                }
                
                
                
            }
        }
    }
}


struct NewsCard_Previews: PreviewProvider {
    static var previews: some View {
        let news = previewData.newses
        NewsCard(news: news)
    }
}
