//
//  FetchNews.swift
//  DailyNews
//
//  Created by Smil on 24/06/23.
//

import Foundation


//https://newsapi.org/v2/top-headlines?country=in&category=general&apiKey=1376078cd8774cf78cedbd73a3062e9a

class NewsMethods: ObservableObject{
    
   @Published var articles = [News]()

    
    
    
    func fetchNews() {
        
        articles = []
        
        let session = URLSession(configuration: .default)
        
        if let url = URL(string: "https://newsapi.org/v2/top-headlines?country=in&category=general&apiKey=1376078cd8774cf78cedbd73a3062e9a"){
            
            let task = session.dataTask(with: url) { data, response, error in
                
                if error != nil{
                    print("error in url")
                    return
                }
                else
                {
                    if let safeData = data{
                        
                        let decoder = JSONDecoder()
                        do{
                            let results = try decoder.decode(Article.self, from: safeData)
                            DispatchQueue.main.async {
                                self.articles = results.articles
                            }
//                            print(self.articles.articles)
                        }
                        catch{
                            print("error decoding the json \(error)")
                        }
                        
                        
                    }
                }
                
            }
            
            task.resume()
            
        }
        
    }
    
    
    
    func fetchCategoryNews(category:String) {
        
        articles = []
        
        let session = URLSession(configuration: .default)
        
        if let url = URL(string: "https://newsapi.org/v2/everything?q=\(category)&apiKey=1376078cd8774cf78cedbd73a3062e9a"){
            
            let task = session.dataTask(with: url) { data, response, error in
                
                if error != nil{
                    print("error in url")
                    return
                }
                else
                {
                    if let safeData = data{
                        
                        let decoder = JSONDecoder()
                        do{
                            let results = try decoder.decode(Article.self, from: safeData)
                            DispatchQueue.main.async {
                                self.articles = results.articles
                            }
//                            print(self.articles.articles)
                        }
                        catch{
                            print("error decoding the json \(error)")
                        }
                        
                        
                    }
                }
                
            }
            
            task.resume()
            
        }
        
    }
    
    
}
