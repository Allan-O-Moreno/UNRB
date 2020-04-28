//
//  PostListViewModel.swift
//  UNRB
//
//  Created by Allan Moreno on 4/21/20.
//  Copyright © 2020 Carlos Varela. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

final class PostListViewModel: ObservableObject {
    
    init(){
        fetchPosts()
    }
    
    var posts = [Post](){
        didSet{
            didChange.send(self)
        }
    }
    
    
    private func fetchPosts(){
        Webservice().getAllPosts{
            self.posts = $0
        }
    }
    let didChange = PassthroughSubject<PostListViewModel,Never>()
}
