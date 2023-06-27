//
//  CategoryNewsTile.swift
//  DailyNews
//
//  Created by Smil on 23/06/23.
//

import SwiftUI

struct CategoryNewsTile: View {
    let categoryName:String
    var body: some View {
       
        NavigationLink(destination: CategoryNewsView(category: categoryName)) {
            
            RoundedRectangle(cornerRadius: 20).frame(width: 150,height: 70).foregroundColor(.newCardColor).overlay {
                Text(categoryName).foregroundColor(.white)
        }
        
        }
        
    }
}

struct CategoryNewsTile_Previews: PreviewProvider {
    static var previews: some View {
        let categoryName = "category"
        CategoryNewsTile(categoryName: categoryName)
    }
}
