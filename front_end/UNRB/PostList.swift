//
//  PostList.swift
//  UNRB
//
//  Created by Timothy Kashi on 3/4/20.
//  Copyright © 2020 Carlos Varela. All rights reserved.
//

import SwiftUI

struct PostList: View {
    @State var posts: [Post] = []
    
    var body: some View {
        List(posts) { post in
            Text(post.body)
        }
            .onAppear() {
                Api().getPosts { (posts) in
                    self.posts = posts
                }
        }
    }
}

struct PostList_Previews: PreviewProvider {
    static var previews: some View {
        PostList()
    }
}
