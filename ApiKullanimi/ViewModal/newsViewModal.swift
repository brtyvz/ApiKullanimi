//
//  newsViewModal.swift
//  ApiKullanimi
//
//  Created by Berat Yavuz on 31.03.2022.
//

import Foundation


struct NewsTableViewModal{
    
    let newsList : [News]
    
    func numberOfRowInSection() -> Int{
    
        return self.newsList.count
    
    }
    
    func newsAtIndexPath(_ index:Int) -> NewsViewModal{
        
        let news =  self.newsList[index]
        return NewsViewModal(news: news)
        
    }
    
}

struct NewsViewModal {
    let news:News
    
    var title : String{
        return news.title
    }
    
    var story:String{
        return news.story
    }
}



