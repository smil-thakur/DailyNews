//
//  NewsModel.swift
//  DailyNews
//
//  Created by Smil on 24/06/23.
//

import Foundation


struct Article: Decodable{
    
    let articles:[News]
    
}

struct News: Decodable{
    
    let author:String?
    let title:String
    let description:String?
    let url:String
    let urlToImage:String?
    let publishedAt:String
    let content:String?
    
}
