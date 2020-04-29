//
//  ContentView.swift
//  UNRB
//
//  Created by Carlos Varela on 2/4/20.
//  Copyright © 2020 Carlos Varela. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
//
//    init() {
//               Webservice().getAllPosts{
//                   print($0)
//               }
//           }
//
//
    
@State var model = PostListViewModel()
    
    var body: some View {
        
//        List(model.posts) { post in
//            Text(post.title)
//        }
//
//
        
        WelcomePage()  // applicaiton will start at the We
        //AboutMe()
        
        
        

        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
