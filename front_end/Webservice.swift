//
//  Webservice.swift
//  UNRB
//
//  Created by Allan Moreno on 4/21/20.
//  Copyright © 2020 Carlos Varela. All rights reserved.
//

import Foundation

class Webservice {
    func getAllPosts(completion: @escaping ([Post])->()){
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts")
            else{
                fatalError("URL is not correct!")
        }
        
        URLSession.shared.dataTask(with:url) {data, _, _ in
            
            let posts = try!
                JSONDecoder().decode([Post].self,from: data!)
            DispatchQueue.main.async {
                completion(posts)
            }
        
        
        
        
        
        
        }.resume()
        
}
}
