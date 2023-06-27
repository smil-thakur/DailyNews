//
//  CategoryNewsListView.swift
//  DailyNews
//
//  Created by Smil on 23/06/23.
//

import SwiftUI

struct CategoryNewsListView: View {
    var categoryList:[CategoryCard]
    var body: some View {
        
      
            HStack(alignment: .top){
                ForEach(categoryList) { datum in
                    
                    CategoryNewsTile(categoryName: datum.name)
                }
            }.padding()
            
        
        
    }
}

struct CategoryNewsListView_Previews: PreviewProvider {
    static var previews: some View {
        let categoryList = previewData.categories
        NavigationStack{
            CategoryNewsListView(categoryList: categoryList)
        }
    }
}
