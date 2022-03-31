//
//  webService.swift
//  ApiKullanimi
//
//  Created by Berat Yavuz on 31.03.2022.
//

import Foundation
class webService{
    
    
    func verileriİndir(url:URL,completion: @escaping([News]?) -> ()){
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error{
                print(error.localizedDescription)
                completion(nil)
            }
            
            else if let data = data {
                let haberlerDizisi = try? JSONDecoder().decode([News].self,from: data)
            
                if let haberlerdizisi = haberlerDizisi{
                    completion(haberlerdizisi)
                }
            }
        }.resume()
        
    }
}
